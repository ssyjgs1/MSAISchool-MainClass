import socket

in_addr = socket.gethostbyname(socket.gethostname())  #내 PC의 이름, 할당된 IP주소를 얻어내는 것

print(in_addr)