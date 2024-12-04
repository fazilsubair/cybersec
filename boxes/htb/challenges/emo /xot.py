# Initial decimal array
dec_array = [182, 187, 229, 146, 231, 177, 151, 149, 166,
             186, 141, 228, 182, 177, 171, 229, 236, 239, 239, 239, 228, 181, 182, 171, 229, 234, 239, 239, 228,
             185, 179, 190, 184, 229, 151, 139, 157, 164, 235, 177, 239, 171, 183, 236, 141, 128, 187, 235, 134, 128, 158, 177, 176, 139,
             183, 154, 173, 128, 175, 151, 238, 140, 183, 162, 228, 170, 173, 179, 229]

# XOR each number with 0xdf and store the result in a new list
xor_array = [i ^ 0xdf for i in dec_array]

# Add 228 to the end of the array
xor_array.append(228)

# Print the XORed values as characters
print(''.join([chr(i) for i in xor_array]))
