import hashlib

def multi_stage_hash(password):
    # Step 1: MD5 x100
    for _ in range(100):
        password = hashlib.md5(password.encode()).hexdigest()
    
    # Step 2: SHA256 x100
    for _ in range(100):
        password = hashlib.sha256(password.encode()).hexdigest()
    
    # Step 3: SHA512 x100
    for _ in range(100):
        password = hashlib.sha512(password.encode()).hexdigest()
    
    return password

# Read the wordlist and generate multi-stage hashes
wordlist_path = "rockyou_flags.txt"
target_hash = "f600d59a5cdd245a45297079299f2fcd811a8c5461d979f09b73d21b11fbb4f899389e588745c6a9af13749eebbdc2e72336cc57ccf90953e6f9096996a58dcc"

with open(wordlist_path, "r") as file:
    for line in file:
        password = line.strip()
        hashed = multi_stage_hash(password)
        
        if hashed == target_hash:
            print(f"🔥 Match found: {password}")
            break
