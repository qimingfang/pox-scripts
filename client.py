import sys
from threading import Thread
import thread
import socket
import time

if len(sys.argv) < 2:
	print "Usage: " + sys.argv[0] +" IP port"
	exit(0)

count = 0

go = thread.allocate_lock()
go.acquire()

def log():
	go.release()
	while True:
		time.sleep(1)
		print count

thr = Thread(target=log)
thr.start()

go.acquire()

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

s.connect((sys.argv[1],int(sys.argv[2])))

while True:
	try:
		count = count + len(s.recv(1024))
	except:
		print "Exception, closing"
		s.close()
		exit(0)
		break
