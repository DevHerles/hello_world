from fastapi import FastAPI
from fastapi.responses import HTMLResponse
import socket

app = FastAPI()

@app.get("/", response_class=HTMLResponse)
async def hello():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    html_content = f"""
        Hostname: {hostname}
        IP Address: {ip_address}
        Hello, World!"""
    return HTMLResponse(content=html_content)

