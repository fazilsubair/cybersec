import ctypes
libc = ctypes.CDLL('libc.so.6')
mapping = {}
for i in range(255):
	libc.srand(i)
	mapping[libc.rand()] = chr(i)




from pwn import *

flag = ""

e = ELF('./casino')
print(e.u32(16512))
for j in range(0,30):
	# print(e.sym["check"])

	
	val = e.u32(16512 + j * 4)
	# print(val)
	flag += mapping[val]
print(flag)
