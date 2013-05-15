import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind(('',8080))
s.listen(1)

conn,addr = s.accept()

data = 256*"Hell"

while True:
	try:
		conn.send(data)	
	except:
		conn.close()
		conn,add = s.accept()
