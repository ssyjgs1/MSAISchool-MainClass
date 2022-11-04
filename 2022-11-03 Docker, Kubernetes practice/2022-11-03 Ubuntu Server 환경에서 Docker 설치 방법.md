# Ubuntu Server 환경에서 Docker 설치 방법
- apt-get을 사용해서 ubuntu를 업데이트(sudo apt-get update), 업그레이드(sudo apt-get upgrade)를 모두 실행한다.
- ubuntu 환경에서 필요한 패키지를 설치한다.
    sudo apt-get install
         apt-transport-https
         ca-certificates
         curl
         gnupg
         lsb-release
- curl -fsSl https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
- echo \ "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
- sudo apt-get update
- sudo apt-get install docker-ce docker-ce-cli containerd.io
- 위의 과정을 통해 docker 프로그램이 설치되면, 잘 작동되는지 확인한다.
- sudo docker run hello-world
- ps 어떠한 프로그램이 실행 중인지 확인
- ps -al  하게 되면, 추가 정보 확인 가능
- docker ps
- sudo docker ps
- sudo usermod -a -G docker $USER
- sudo service docker restart
- sudo docker ps 현재 docker 상에서 진행 중인 거 확인
- docker pull ubuntu:18.04 우분투 이미지 갖고옴
- docker images 도커 상 이미지가 몇 개인지 확인
- docker run ㅁㅁ 특정 이미지(ㅁㅁ)를 실행함
- docker run -it -name demo1 ubuntu:18.04 /bin/bash 데모1이 컨테이너 안으로 들어간다
- docker logs 지금까지 실행된 명령 확인
- docker run --name demo4 -d busybox sh -c "while True;do $(echo date);sleep 1;done" 정지 명령을 내리기 전까지 1초 단위로 현재 날짜+시각을 찍어줌(while문)
- docker rmi ubuntu:18.04 우분투 이미지 삭제


# Linux(Ubuntu)상 명령어 실습
vi ㅁㅁ.text
- VI(텍스트)편집기 열어서 새로운 파일 생성
- i : 편집, w : 저장, q : 나가기, esc : 메뉴 선택을 위한 뒤로가기(?), q! : 강제 탈출
cat ㅁㅁ.txt
- VI 편집기 열지 않고도 내부 내용 열람 가능
touch ㅁㅁ.txt
- 빈 내용의 텍스트 파일 생성
echo
- python의 print문과 유사
grep
- 특정 검색어를 걸고 찾기 가능


# 협업 방법
1. Docker 자체의 이용
2. local 환경에 Docker registry를 만들어서 개발
3. Docker Hub를 이용(Github의 docker판)


# Kubernetes의 환경 설정을 위한 yaml파일 작성
- 배포(deployment)를 위한 환경 설정 
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3 # 복사본 3개라는 뜻
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80