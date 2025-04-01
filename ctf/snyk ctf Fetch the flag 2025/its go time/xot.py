xot = [0x85,0x97,0xCD,0x94,0x99,0x8C,0xC6,0xCB,0xCA,0x9B,0xC7,0x98,0x9E,0x8F,0x93,0xCC]

# xot1 = []
for i in range(16):

    temp = xot[i]
    notrestult = ~temp & 0xFF
    restult = notrestult ^ 0x42
    ans = (restult-i)& 0xFF
    print(hex(ans))

# xot3 = [0x7a,0x68,0x32,0x6b,0x66,0x73,0x39,0x34]

# temp = 0xCA

# a = ~temp & 0xFF
# b = 0x42

# restult = a^b


# aaaabbbbccccdddd
expected_bytes = [
    0x85, 0x97, 0xcd, 0x94, 0x99, 0x8c, 0xc6, 0xcb,
    0xca, 0x9b, 0xc7, 0x98, 0x9e, 0x8f, 0x93, 0xcc
]

# def calculate_key(expected):
#     """Calculate the valid 16-byte key from expected_bytes."""
#     key = []
#     for i in range(16):
#         # Formula: input[i] = (~expected[i] ^ 0x42) - i
#         # ~ is bitwise NOT, ^ is XOR, all in 8-bit arithmetic
#         not_expected = ~expected[i] & 0xff  # NOT and mask to 8 bits
#         xor_result = not_expected ^ 0x42    # XOR with 0x42
#         key_byte = (xor_result - i) & 0xff  # Subtract i, mask to 8 bits
#         print(hex(key_byte))
#         key.append(key_byte)
#     return bytes(key)

# print(calculate_key(expected_bytes))