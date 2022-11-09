Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

새로운 기능 및 개선 사항에 대 한 최신 PowerShell을 설치 하세요! https://aka.ms/PSWindows

PS C:\Users\ssyjg> ssh ㅁㅁㅁㅁ@ㅁㅁ.ㅁㅁ.ㅇㅇㅇ.ㅇㅇㅇ
ㅁㅁㅁㅁ@ㅁㅁ.ㅁㅁ.ㅇㅇㅇ.ㅇㅇㅇ's password:
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-1022-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Nov  9 08:15:20 UTC 2022

  System load:  0.10107421875     Processes:             126
  Usage of /:   5.7% of 28.89GB   Users logged in:       0
  Memory usage: 4%                IPv4 address for eth0: 10.0.0.5
  Swap usage:   0%

UA Apps: Extended Security Maintenance (ESM) is enabled.

0 updates can be applied immediately.



The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ docker
Command 'docker' not found, but can be installed with:
sudo apt install docker.io      # version 20.10.12-0ubuntu4, or
sudo apt install podman-docker  # version 3.4.4+ds1-1ubuntu1
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo apt-get update
[sudo] password for ㅁㅁㅁㅁ:
Hit:1 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:5 https://esm.ubuntu.com/apps/ubuntu jammy-apps-security InRelease
Hit:6 https://esm.ubuntu.com/apps/ubuntu jammy-apps-updates InRelease
Get:7 https://esm.ubuntu.com/infra/ubuntu jammy-infra-security InRelease [7453 B]
Get:8 https://esm.ubuntu.com/infra/ubuntu jammy-infra-updates InRelease [7452 B]
Fetched 14.9 kB in 2s (6109 B/s)
Reading package lists... Done
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo apt-get update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:5 https://esm.ubuntu.com/apps/ubuntu jammy-apps-security InRelease
Hit:6 https://esm.ubuntu.com/apps/ubuntu jammy-apps-updates InRelease
Get:7 https://esm.ubuntu.com/infra/ubuntu jammy-infra-security InRelease [7453 B]
Get:8 https://esm.ubuntu.com/infra/ubuntu jammy-infra-updates InRelease [7452 B]
Fetched 14.9 kB in 2s (6487 B/s)
Reading package lists... Done
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ apt-get
apt 2.4.8 (amd64)
Usage: apt-get [options] command
       apt-get [options] install|remove pkg1 [pkg2 ...]
       apt-get [options] source pkg1 [pkg2 ...]

apt-get is a command line interface for retrieval of packages
and information about them from authenticated sources and
for installation, upgrade and removal of packages together
with their dependencies.

Most used commands:
  update - Retrieve new lists of packages
  upgrade - Perform an upgrade
  install - Install new packages (pkg is libc6 not libc6.deb)
  reinstall - Reinstall packages (pkg is libc6 not libc6.deb)
  remove - Remove packages
  purge - Remove packages and config files
  autoremove - Remove automatically all unused packages
  dist-upgrade - Distribution upgrade, see apt-get(8)
  dselect-upgrade - Follow dselect selections
  build-dep - Configure build-dependencies for source packages
  satisfy - Satisfy dependency strings
  clean - Erase downloaded archive files
  autoclean - Erase old downloaded archive files
  check - Verify that there are no broken dependencies
  source - Download source archives
  download - Download the binary package into the current directory
  changelog - Download and display the changelog for the given package

See apt-get(8) for more information about the available commands.
Configuration options and syntax is detailed in apt.conf(5).
Information about how to configure sources can be found in sources.list(5).
Package and version choices can be expressed via apt_preferences(5).
Security details are available in apt-secure(8).
                                        This APT has Super Cow Powers.
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
Hit:1 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:4 https://esm.ubuntu.com/apps/ubuntu jammy-apps-security InRelease
Hit:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:6 https://esm.ubuntu.com/apps/ubuntu jammy-apps-updates InRelease
Get:7 https://esm.ubuntu.com/infra/ubuntu jammy-infra-security InRelease [7453 B]
Get:8 https://esm.ubuntu.com/infra/ubuntu jammy-infra-updates InRelease [7452 B]
Fetched 14.9 kB in 2s (6948 B/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
ca-certificates is already the newest version (20211016).
ca-certificates set to manually installed.
lsb-release is already the newest version (11.1.0ubuntu4).
lsb-release set to manually installed.
curl is already the newest version (7.81.0-1ubuntu1.6).
curl set to manually installed.
gnupg is already the newest version (2.2.27-3ubuntu2.1).
gnupg set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo apt-get update
Get:1 https://download.docker.com/linux/ubuntu jammy InRelease [48.9 kB]
Get:2 https://download.docker.com/linux/ubuntu jammy/stable amd64 Packages [9481 B]
Hit:3 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:4 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:6 https://esm.ubuntu.com/apps/ubuntu jammy-apps-security InRelease
Hit:7 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:8 https://esm.ubuntu.com/apps/ubuntu jammy-apps-updates InRelease
Get:9 https://esm.ubuntu.com/infra/ubuntu jammy-infra-security InRelease [7453 B]
Get:10 https://esm.ubuntu.com/infra/ubuntu jammy-infra-updates InRelease [7452 B]
Fetched 73.3 kB in 1s (51.6 kB/s)
Reading package lists... Done
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  docker-ce-rootless-extras docker-scan-plugin libltdl7 libslirp0 pigz slirp4netns
Suggested packages:
  aufs-tools cgroupfs-mount | cgroup-lite
The following NEW packages will be installed:
  containerd.io docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose-plugin docker-scan-plugin libltdl7
  libslirp0 pigz slirp4netns
0 upgraded, 10 newly installed, 0 to remove and 0 not upgraded.
Need to get 111 MB of archives.
After this operation, 428 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 https://download.docker.com/linux/ubuntu jammy/stable amd64 containerd.io amd64 1.6.9-1 [27.7 MB]
Get:2 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-cli amd64 5:20.10.21~3-0~ubuntu-jammy [41.5MB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
Get:4 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce amd64 5:20.10.21~3-0~ubuntu-jammy [20.5 MB]
Get:5 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-rootless-extras amd64 5:20.10.21~3-0~ubuntu-jammy [8389 kB]
Get:6 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-compose-plugin amd64 2.12.2~ubuntu-jammy [9566kB]
Get:7 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-scan-plugin amd64 0.21.0~ubuntu-jammy [3622 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 libltdl7 amd64 2.4.6-15build2 [39.6 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy/main amd64 libslirp0 amd64 4.6.1-1build1 [61.5 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy/universe amd64 slirp4netns amd64 1.0.1-2 [28.2 kB]
Fetched 111 MB in 1s (76.2 MB/s)
Selecting previously unselected package pigz.
(Reading database ... 60627 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.6-1_amd64.deb ...
Unpacking pigz (2.6-1) ...
Selecting previously unselected package containerd.io.
Preparing to unpack .../1-containerd.io_1.6.9-1_amd64.deb ...
Unpacking containerd.io (1.6.9-1) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../2-docker-ce-cli_5%3a20.10.21~3-0~ubuntu-jammy_amd64.deb ...
Unpacking docker-ce-cli (5:20.10.21~3-0~ubuntu-jammy) ...
Selecting previously unselected package docker-ce.
Preparing to unpack .../3-docker-ce_5%3a20.10.21~3-0~ubuntu-jammy_amd64.deb ...
Unpacking docker-ce (5:20.10.21~3-0~ubuntu-jammy) ...
Selecting previously unselected package docker-ce-rootless-extras.
Preparing to unpack .../4-docker-ce-rootless-extras_5%3a20.10.21~3-0~ubuntu-jammy_amd64.deb ...
Unpacking docker-ce-rootless-extras (5:20.10.21~3-0~ubuntu-jammy) ...
Selecting previously unselected package docker-compose-plugin.
Preparing to unpack .../5-docker-compose-plugin_2.12.2~ubuntu-jammy_amd64.deb ...
Unpacking docker-compose-plugin (2.12.2~ubuntu-jammy) ...
Selecting previously unselected package docker-scan-plugin.
Preparing to unpack .../6-docker-scan-plugin_0.21.0~ubuntu-jammy_amd64.deb ...
Unpacking docker-scan-plugin (0.21.0~ubuntu-jammy) ...
Selecting previously unselected package libltdl7:amd64.
Preparing to unpack .../7-libltdl7_2.4.6-15build2_amd64.deb ...
Unpacking libltdl7:amd64 (2.4.6-15build2) ...
Selecting previously unselected package libslirp0:amd64.
Preparing to unpack .../8-libslirp0_4.6.1-1build1_amd64.deb ...
Unpacking libslirp0:amd64 (4.6.1-1build1) ...
Selecting previously unselected package slirp4netns.
Preparing to unpack .../9-slirp4netns_1.0.1-2_amd64.deb ...
Unpacking slirp4netns (1.0.1-2) ...
Setting up docker-scan-plugin (0.21.0~ubuntu-jammy) ...
Setting up containerd.io (1.6.9-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker-compose-plugin (2.12.2~ubuntu-jammy) ...
Setting up libltdl7:amd64 (2.4.6-15build2) ...
Setting up docker-ce-cli (5:20.10.21~3-0~ubuntu-jammy) ...
Setting up libslirp0:amd64 (4.6.1-1build1) ...
Setting up pigz (2.6-1) ...
Setting up docker-ce-rootless-extras (5:20.10.21~3-0~ubuntu-jammy) ...
Setting up slirp4netns (1.0.1-2) ...
Setting up docker-ce (5:20.10.21~3-0~ubuntu-jammy) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
Scanning processes...
Scanning linux images...

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
2db29710123e: Pull complete
Digest: sha256:e18f0a777aefabe047a671ab3ec3eed05414477c951ab1a6f352a06974245fe7
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ docker --version
Docker version 20.10.21, build baeda1f
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ git clone https://github.com/Azure-Samples/azure-voting-app-redis.git
Cloning into 'azure-voting-app-redis'...
remote: Enumerating objects: 174, done.
remote: Total 174 (delta 0), reused 0 (delta 0), pack-reused 174
Receiving objects: 100% (174/174), 37.21 KiB | 1.49 MiB/s, done.
Resolving deltas: 100% (78/78), done.
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ ls -al
total 32
drwxr-x--- 5 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  9 08:23 .
drwxr-xr-x 3 root    root    4096 Nov  9 08:09 ..
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  220 Jan  6  2022 .bash_logout
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 3771 Jan  6  2022 .bashrc
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  9 08:15 .cache
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  807 Jan  6  2022 .profile
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  9 08:09 .ssh
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ    0 Nov  9 08:15 .sudo_as_admin_successful
drwxrwxr-x 5 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  9 08:24 azure-voting-app-redis
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~$ cd azure-voting-app-redis/
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ ls
LICENSE  README.md  azure-vote  azure-vote-all-in-one-redis.yaml  docker-compose.yaml  jenkins-tutorial
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ cat docker-compose.yaml
version: '3'
services:
  azure-vote-back:
    image: mcr.microsoft.com/oss/bitnami/redis:6.0.8
    container_name: azure-vote-back
    environment:
      ALLOW_EMPTY_PASSWORD: "yes"
    ports:
        - "6379:6379"

  azure-vote-front:
    build: ./azure-vote
    image: mcr.microsoft.com/azuredocs/azure-vote-front:v1
    container_name: azure-vote-front
    environment:
      REDIS: azure-vote-back
    ports:
        - "8080:80"
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ docker-compose up -d
Command 'docker-compose' not found, but can be installed with:
sudo apt install docker-compose
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 12.1M  100 12.1M    0     0  30.5M      0 --:--:-- --:--:-- --:--:-- 30.5M
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo chmod +x /usr/local/bin/docker-compose
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ docker-compose --version
docker-compose version 1.29.2, build 5becea4c
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ docker-compose up -d
Traceback (most recent call last):
  File "urllib3/connectionpool.py", line 677, in urlopen
  File "urllib3/connectionpool.py", line 392, in _make_request
  File "http/client.py", line 1277, in request
  File "http/client.py", line 1323, in _send_request
  File "http/client.py", line 1272, in endheaders
  File "http/client.py", line 1032, in _send_output
  File "http/client.py", line 972, in send
  File "docker/transport/unixconn.py", line 43, in connect
PermissionError: [Errno 13] Permission denied

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "requests/adapters.py", line 449, in send
  File "urllib3/connectionpool.py", line 727, in urlopen
  File "urllib3/util/retry.py", line 410, in increment
  File "urllib3/packages/six.py", line 734, in reraise
  File "urllib3/connectionpool.py", line 677, in urlopen
  File "urllib3/connectionpool.py", line 392, in _make_request
  File "http/client.py", line 1277, in request
  File "http/client.py", line 1323, in _send_request
  File "http/client.py", line 1272, in endheaders
  File "http/client.py", line 1032, in _send_output
  File "http/client.py", line 972, in send
  File "docker/transport/unixconn.py", line 43, in connect
urllib3.exceptions.ProtocolError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "docker/api/client.py", line 214, in _retrieve_server_version
  File "docker/api/daemon.py", line 181, in version
  File "docker/utils/decorators.py", line 46, in inner
  File "docker/api/client.py", line 237, in _get
  File "requests/sessions.py", line 543, in get
  File "requests/sessions.py", line 530, in request
  File "requests/sessions.py", line 643, in send
  File "requests/adapters.py", line 498, in send
requests.exceptions.ConnectionError: ('Connection aborted.', PermissionError(13, 'Permission denied'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "docker-compose", line 3, in <module>
  File "compose/cli/main.py", line 81, in main
  File "compose/cli/main.py", line 200, in perform_command
  File "compose/cli/command.py", line 70, in project_from_options
  File "compose/cli/command.py", line 153, in get_project
  File "compose/cli/docker_client.py", line 43, in get_client
  File "compose/cli/docker_client.py", line 170, in docker_client
  File "docker/api/client.py", line 197, in __init__
  File "docker/api/client.py", line 222, in _retrieve_server_version
docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
[6564] Failed to execute script docker-compose
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo docker-compose up -d
Creating network "azure-voting-app-redis_default" with the default driver
Pulling azure-vote-back (mcr.microsoft.com/oss/bitnami/redis:6.0.8)...
6.0.8: Pulling from oss/bitnami/redis
58212c1109c5: Pull complete
476959f86aed: Pull complete
e9439c5c5ef5: Pull complete
bf887c7f6b15: Pull complete
4e934f6d99d2: Pull complete
e33ec5243c54: Pull complete
9f99ff6b922f: Pull complete
097294963657: Pull complete
919efe137172: Pull complete
b3346fcea345: Pull complete
3bb7743413aa: Pull complete
Digest: sha256:9b53ae0f1cf3f7d7854584c8b7c5a96fe732c48d504331da6c00f892fdcce102
Status: Downloaded newer image for mcr.microsoft.com/oss/bitnami/redis:6.0.8
Building azure-vote-front
Sending build context to Docker daemon  16.38kB
Step 1/3 : FROM tiangolo/uwsgi-nginx-flask:python3.6
python3.6: Pulling from tiangolo/uwsgi-nginx-flask
9b99af5931b3: Pull complete
b6013b3e77fe: Pull complete
bbced17b6899: Pull complete
8b609dabefa8: Pull complete
50544bfef33d: Pull complete
964244a92902: Pull complete
ef5d3eb9cc29: Pull complete
82cee9e5607e: Pull complete
1d082f1c77ef: Pull complete
062b69ba8eb8: Pull complete
e51df4a3ff7c: Pull complete
80293e31dc3c: Pull complete
2a613189bfcc: Pull complete
655c1c1dd99c: Pull complete
000f5f03ae0b: Pull complete
78f6dfc532c2: Pull complete
256c90337f87: Pull complete
5aaaba63c383: Pull complete
c9b549df6e44: Pull complete
9297507077dd: Pull complete
42faec23b5a2: Pull complete
450fca73d61e: Pull complete
4d2fd94f89e0: Pull complete
4566647008c8: Pull complete
31fc45eafc4e: Pull complete
90005cf2f24f: Pull complete
c82336f57b67: Pull complete
19b3e67f2c14: Pull complete
2688a57f60f9: Pull complete
d47641f41cb9: Pull complete
Digest: sha256:695c26b418dad47121ed71b1216e2d3b96733832d9b010ef87a10300a32fc558
Status: Downloaded newer image for tiangolo/uwsgi-nginx-flask:python3.6
 ---> b46c61acd810
Step 2/3 : RUN pip install redis
 ---> Running in c3ccb1c7f493
Collecting redis
  Downloading redis-4.3.4-py3-none-any.whl (246 kB)
Collecting packaging>=20.4
  Downloading packaging-21.3-py3-none-any.whl (40 kB)
Collecting deprecated>=1.2.3
  Downloading Deprecated-1.2.13-py2.py3-none-any.whl (9.6 kB)
Requirement already satisfied: typing-extensions in /usr/local/lib/python3.6/site-packages (from redis) (4.1.1)
Collecting async-timeout>=4.0.2
  Downloading async_timeout-4.0.2-py3-none-any.whl (5.8 kB)
Requirement already satisfied: importlib-metadata>=1.0 in /usr/local/lib/python3.6/site-packages (from redis) (4.8.3)
Collecting wrapt<2,>=1.10
  Downloading wrapt-1.14.1-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (74 kB)
Requirement already satisfied: zipp>=0.5 in /usr/local/lib/python3.6/site-packages (from importlib-metadata>=1.0->redis) (3.6.0)
Collecting pyparsing!=3.0.5,>=2.0.2
  Downloading pyparsing-3.0.9-py3-none-any.whl (98 kB)
Installing collected packages: wrapt, pyparsing, packaging, deprecated, async-timeout, redis
Successfully installed async-timeout-4.0.2 deprecated-1.2.13 packaging-21.3 pyparsing-3.0.9 redis-4.3.4 wrapt-1.14.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
WARNING: You are using pip version 21.2.4; however, version 21.3.1 is available.
You should consider upgrading via the '/usr/local/bin/python -m pip install --upgrade pip' command.
Removing intermediate container c3ccb1c7f493
 ---> 90a4a1a98741
Step 3/3 : ADD /azure-vote /app
 ---> e32b78994c34
Successfully built e32b78994c34
Successfully tagged mcr.microsoft.com/azuredocs/azure-vote-front:v1
WARNING: Image for service azure-vote-front was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating azure-vote-back  ... done
Creating azure-vote-front ... done
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ docker images
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/images/json": dial unix /var/run/docker.sock: connect: permission denied
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo docker images
REPOSITORY                                     TAG         IMAGE ID       CREATED              SIZE
mcr.microsoft.com/azuredocs/azure-vote-front   v1          e32b78994c34   About a minute ago   908MB
tiangolo/uwsgi-nginx-flask                     python3.6   b46c61acd810   6 months ago         904MB
hello-world                                    latest      feb5d9fea6a5   13 months ago        13.3kB
mcr.microsoft.com/oss/bitnami/redis            6.0.8       3a54a920bb6c   2 years ago          103MB
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo docker -ps
unknown shorthand flag: 'p' in -ps
See 'docker --help'.

Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/root/.docker")
  -c, --context string     Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level ("debug"|"info"|"warn"|"error"|"fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/root/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/root/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/root/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  app*        Docker App (Docker Inc., v0.9.1-beta3)
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.9.1-docker)
  compose*    Docker Compose (Docker Inc., v2.12.2)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  scan*       Docker Scan (Docker Inc., v0.21.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.

To get more help with docker, check out our guides at https://docs.docker.com/go/guides/

ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo docker images
REPOSITORY                                     TAG         IMAGE ID       CREATED         SIZE
mcr.microsoft.com/azuredocs/azure-vote-front   v1          e32b78994c34   2 minutes ago   908MB
tiangolo/uwsgi-nginx-flask                     python3.6   b46c61acd810   6 months ago    904MB
hello-world                                    latest      feb5d9fea6a5   13 months ago   13.3kB
mcr.microsoft.com/oss/bitnami/redis            6.0.8       3a54a920bb6c   2 years ago     103MB
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$ sudo docker ps
CONTAINER ID   IMAGE                                             COMMAND                  CREATED         STATUS PORTS                                            NAMES
5e97e3ebc171   mcr.microsoft.com/oss/bitnami/redis:6.0.8         "/opt/bitnami/script…"   3 minutes ago   Up 3 minutes 0.0.0.0:6379->6379/tcp, :::6379->6379/tcp        azure-vote-back
ab4185911c41   mcr.microsoft.com/azuredocs/azure-vote-front:v1   "/entrypoint.sh /sta…"   3 minutes ago   Up 3 minutes 443/tcp, 0.0.0.0:8080->80/tcp, :::8080->80/tcp   azure-vote-front
ㅁㅁㅁㅁ@ADMINISTRATORlinux:~/azure-voting-app-redis$