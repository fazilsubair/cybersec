import sys

def decrypt_file(input_file, output_file):
    XOR_KEY = 0xAB
    try:
        with open(input_file, 'rb') as f_in:
            encrypted = f_in.read()
        decrypted = bytes([b ^ XOR_KEY for b in encrypted])
        with open(output_file, 'wb') as f_out:
            f_out.write(decrypted)
        print(f"Successfully decrypted {input_file} to {output_file}")
    except Exception as e:
        print(f"Error during decryption: {e}")
        sys.exit(1)

if __name__ == "__main__":
    decrypt_file("file.bin", "decrypted.bin")

After just decompile the decrypted.bin

def swap_chars(s, i, j):
    s = list(s)
    s[i], s[j] = s[j], s[i]
    return ''.join(s)

def reverse_initial_swaps(s):
    s = swap_chars(s, 0x14, 0x17)
    s = swap_chars(s, 4, 8)
    s = swap_chars(s, 0xe, 0x1a)
    s = swap_chars(s, 0, 0xc)
    return s

def reverse_permutation(encoded):
    perm = [9, 12, 2, 10, 4, 1, 6, 3, 8, 5, 7, 11, 0, 13]
    result = encoded
    for _ in range(8):
        temp = [''] * 14
        for i, p in enumerate(perm):
            temp[p] = result[i]
        result = ''.join(temp)
    return result

def reverse_xor(s, key):
    positions = [2, 4, 6, 8, 11, 13]
    s = list(s)
    for pos in positions:
        s[pos] = chr(ord(s[pos]) ^ key)
    return ''.join(s)

target = "RV{r15]_vcP3o]L_tazmfSTaa3s0"
part1 = target[:14]
part2 = target[14:]
r1 = reverse_xor(reverse_permutation(part1), 2)
r2 = reverse_xor(reverse_permutation(part2), 3)
flag = reverse_initial_swaps(r1 + r2)
print("HTB{" + flag + "}")
