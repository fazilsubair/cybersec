def decrypt_xor(encrypted_hex, key_length=4):
    # Convert hex to bytes
    encrypted = bytes.fromhex(encrypted_hex)
    
    # Total number of possible keys
    total_keys = 256**key_length
    
    # Track found decryptions
    found_decryptions = []
    
    # Try all possible 4-byte keys
    for key_candidate in range(total_keys):
        # Convert key to bytes
        key = key_candidate.to_bytes(key_length, 'big')
        
        # Decrypt by XORing with the candidate key
        decrypted = b''
        for i in range(len(encrypted)):
            decrypted += bytes([encrypted[i] ^ key[i % key_length]])
        
        # Check if decrypted data starts with HTB
        try:
            decoded = decrypted.decode('utf-8')
            if decoded.startswith('HTB{'):
                found_decryptions.append({
                    'key': key.hex(),
                    'decoded': decoded
                })
                print(f"Key: {key.hex()}")
                print(f"Decoded: {decoded}")
                print("-" * 40)
        except:
            continue
    
    print(f"\nTotal HTB flags found: {len(found_decryptions)}")
    return found_decryptions

# Example usage
encrypted_flag = "134af6e1297bc4a96f6a87fe046684e8047084ee046d84c5282dd7ef292dc9"
decrypt_xor(encrypted_flag)