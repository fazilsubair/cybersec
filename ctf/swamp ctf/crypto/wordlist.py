# Path to the RockYou wordlist
rockyou_path = "/usr/share/wordlists/rockyou.txt"
output_file = "rockyou_flags.txt"

# Open the RockYou file and iterate through it
with open(rockyou_path, "rb") as rockyou, open(output_file, "w") as output:
    for line in rockyou:
        password = line.strip().decode("utf-8", errors="ignore")
        flag = f'swampCTF{{{password}}}\n'
        output.write(flag)

print(f"Output written to {output_file}")
