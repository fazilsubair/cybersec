from pwn import remote
from sage.all import *  
 
p = 21214334341047589034959795830530169972304000967355896041112297190770972306665257150126981587914335537556050020788061
 
bits = p.bit_length()  
print(f"[1] prime p has {bits} bits")
 
formatted_factorization = "2,2_5,1_635599,1_2533393,1_4122411947,1_175521834973,1_206740999513,1_1994957217983,1_215264178543783483824207,1_10254137552818335844980930258636403,1"
print(f"[2] precomputed factorization: {formatted_factorization}")
 
factors = factor(p-1)
def is_generator(g, p):
    return 1 if all([pow(g, (p-1)//f, p) != 1 for f, _ in factors]) else 0
 
formatted_order_factorization = "2,2_7,2_21214334341047589034959795830530169972304000967355896041112297190770972306665257150126981587914335537556050020788061,1_2296163171090566549378609985715193912396821929882292947886890025295122370435191839352044293887595879123562797851002485690372901374381417938210071827839043175382685244226599901222328480132064138736290361668527861560801378793266019,1"
print(f"[5] precomputed curve order factorization")
formatted_factors = [(2, 2),
(7, 2),
(21214334341047589034959795830530169972304000967355896041112297190770972306665257150126981587914335537556050020788061,
  1),
(2296163171090566549378609985715193912396821929882292947886890025295122370435191839352044293887595879123562797851002485690372901374381417938210071827839043175382685244226599901222328480132064138736290361668527861560801378793266019,
  1)]
 
HOST = "94.237.48.197"
PORT = 58037
print(f"Connect to {HOST}:{PORT}")
r = remote(HOST, PORT)
 
r.sendlineafter(b'>', str(bits).encode())
r.sendlineafter(b'>', formatted_factorization.encode())
 
print("generator questions...")
for _ in range(17):
    element_line = r.recvuntil(b'?', drop=True).decode()
    if element_line.split('\n')[-1].isdigit():
        element = int(element_line.split('\n')[-1])
    else:
        element = int(element_line.split('\n')[-1].strip().split(" ")[-1])
    r.sendline(str(is_generator(element, p)).encode())
 
A = r.recvline_contains(b'a = ').split(b' = ')[1].strip().decode()
B= r.recvline_contains(b'b = ').split(b' = ')[1].strip().decode()
curve = EllipticCurve(GF(p), [int(A), int(B)])
print(f"Skipping curve  A = {A}, B = {B}")
 
r.sendlineafter(b'>', str(curve.order()).encode())
r.sendlineafter(b'>', formatted_order_factorization.encode())
 
G = r.recvline_contains(b'G coordinate: ').split(b': ')[1].strip().decode()
A = r.recvline_contains(b'A coordinate: ').split(b': ')[1].strip().decode()
 
G = curve.lift_x(Integer(G))
A = curve.lift_x(Integer(A))
 
print(f"log of A = {A} with G = {G}")
d = A.log(G)
print(f"log d = {d}")
r.sendlineafter(b'>', str(d).encode())
r.interactive()