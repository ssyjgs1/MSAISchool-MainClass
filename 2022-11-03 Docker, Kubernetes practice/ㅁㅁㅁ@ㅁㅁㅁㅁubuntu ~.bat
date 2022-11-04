Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

새로운 기능 및 개선 사항에 대 한 최신 PowerShell을 설치 하세요! https://aka.ms/PSWindows

PS C:\Users\ㅁㅁㅁㅁ> ssh ㅁㅁㅁㅁ@ㅁㅁㅁㅁㅁㅁㅁㅁ
ㅁㅁㅁㅁ@ㅁㅁㅁㅁㅁ's password:
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-1022-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Nov  3 01:34:21 UTC 2022

  System load:  0.080078125       Processes:             140
  Usage of /:   6.6% of 28.89GB   Users logged in:       1
  Memory usage: 2%                IPv4 address for eth0: 10.0.0.4
  Swap usage:   0%


0 updates can be applied immediately.


Last login: Thu Nov  3 00:44:21 2022 from 124.111.84.213
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo apt-get update
sudo apt-get upgrade
Hit:1 http://azure.archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://azure.archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://azure.archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://azure.archive.ubuntu.com/ubuntu jammy-security InRelease
Ign:5 https://download.docker.com/linux/ubuntu echo InRelease
Err:6 https://download.docker.com/linux/ubuntu echo Release
  404  Not Found [IP: 13.32.50.74 443]
Reading package lists... Done
E: The repository 'https://download.docker.com/linux/ubuntu echo Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
Try Ubuntu Pro beta with a free personal subscription on up to 5 machines.
Learn more at https://ubuntu.com/pro
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
ca-certificates is already the newest version (20211016).
lsb-release is already the newest version (11.1.0ubuntu4).
curl is already the newest version (7.81.0-1ubuntu1.6).
gnupg is already the newest version (2.2.27-3ubuntu2.1).
apt-transport-https is already the newest version (2.4.8).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
File '/usr/share/keyrings/docker-archive-keyring.gpg' exists. Overwrite? (y/N) y
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
Hit:1 http://azure.archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://azure.archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://azure.archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://azure.archive.ubuntu.com/ubuntu jammy-security InRelease
Hit:5 https://download.docker.com/linux/ubuntu jammy InRelease
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  docker-ce-rootless-extras docker-scan-plugin libltdl7 libslirp0 pigz slirp4netns
Suggested packages:
  aufs-tools cgroupfs-mount | cgroup-lite
The following NEW packages will be installed:
  containerd.io docker-ce docker-ce-cli docker-ce-rootless-extras docker-scan-plugin libltdl7 libslirp0 pigz
  slirp4netns
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
Need to get 102 MB of archives.
After this operation, 384 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://azure.archive.ubuntu.com/ubuntu jammy/universe amd64 pigz amd64 2.6-1 [63.6 kB]
Get:2 http://azure.archive.ubuntu.com/ubuntu jammy/main amd64 libltdl7 amd64 2.4.6-15build2 [39.6 kB]
Get:3 http://azure.archive.ubuntu.com/ubuntu jammy/main amd64 libslirp0 amd64 4.6.1-1build1 [61.5 kB]
Get:4 http://azure.archive.ubuntu.com/ubuntu jammy/universe amd64 slirp4netns amd64 1.0.1-2 [28.2 kB]
Get:5 https://download.docker.com/linux/ubuntu jammy/stable amd64 containerd.io amd64 1.6.9-1 [27.7 MB]
Get:6 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-cli amd64 5:20.10.21~3-0~ubuntu-jammy [41.5 MB]
Get:7 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce amd64 5:20.10.21~3-0~ubuntu-jammy [20.5 MB]
Get:8 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-ce-rootless-extras amd64 5:20.10.21~3-0~ubuntu-jammy [8389 kB]
Get:9 https://download.docker.com/linux/ubuntu jammy/stable amd64 docker-scan-plugin amd64 0.21.0~ubuntu-jammy [3622 kB]Fetched 102 MB in 8s (12.2 MB/s)
Selecting previously unselected package pigz.
(Reading database ... 60626 files and directories currently installed.)
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
Selecting previously unselected package docker-scan-plugin.
Preparing to unpack .../5-docker-scan-plugin_0.21.0~ubuntu-jammy_amd64.deb ...
Unpacking docker-scan-plugin (0.21.0~ubuntu-jammy) ...
Selecting previously unselected package libltdl7:amd64.
Preparing to unpack .../6-libltdl7_2.4.6-15build2_amd64.deb ...
Unpacking libltdl7:amd64 (2.4.6-15build2) ...
Selecting previously unselected package libslirp0:amd64.
Preparing to unpack .../7-libslirp0_4.6.1-1build1_amd64.deb ...
Unpacking libslirp0:amd64 (4.6.1-1build1) ...
Selecting previously unselected package slirp4netns.
Preparing to unpack .../8-slirp4netns_1.0.1-2_amd64.deb ...
Unpacking slirp4netns (1.0.1-2) ...
Setting up docker-scan-plugin (0.21.0~ubuntu-jammy) ...
Setting up containerd.io (1.6.9-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.Setting up libltdl7:amd64(2.4.6-15build2) ...
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
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo docker run hello-world
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

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo docker run hello-world

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

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ps
    PID TTY          TIME CMD
  10176 pts/1    00:00:00 bash
  11584 pts/1    00:00:00 ps
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ps -al
F S   UID     PID    PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
0 R  1000   11587   10176  0  80   0 -  2615 -      pts/1    00:00:00 ps
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo usermod -a -G docker $User
Usage: usermod [options] LOGIN

Options:
  -b, --badnames                allow bad names
  -c, --comment COMMENT         new value of the GECOS field
  -d, --home HOME_DIR           new home directory for the user account
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -f, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -g, --gid GROUP               force use GROUP as new primary group
  -G, --groups GROUPS           new list of supplementary GROUPS
  -a, --append                  append the user to the supplemental GROUPS
                                mentioned by the -G option without removing
                                the user from other groups
  -h, --help                    display this help message and exit
  -l, --login NEW_LOGIN         new value of the login name
  -L, --lock                    lock the user account
  -m, --move-home               move contents of the home directory to the
                                new location (use only with -d)
  -o, --non-unique              allow using duplicate (non-unique) UID
  -p, --password PASSWORD       use encrypted password for the new password
  -R, --root CHROOT_DIR         directory to chroot into
  -P, --prefix PREFIX_DIR       prefix directory where are located the /etc/* files
  -s, --shell SHELL             new login shell for the user account
  -u, --uid UID                 new UID for the user account
  -U, --unlock                  unlock the user account
  -v, --add-subuids FIRST-LAST  add range of subordinate uids
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids
  -w, --add-subgids FIRST-LAST  add range of subordinate gids
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids
  -Z, --selinux-user SEUSER     new SELinux user mapping for the user account

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo usermod -a -G docker $USER
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo service docker restart
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ exit
logout
Connection to 20.78.247.91 closed.
PS C:\Users\ssyjg> ssh ㅁㅁㅁㅁ@20.78.247.91
ㅁㅁㅁㅁ@20.78.247.91's password:
Welcome to Ubuntu 22.04.1 LTS (GNU/Linux 5.15.0-1022-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Nov  3 01:45:16 UTC 2022

  System load:  0.0               Processes:                153
  Usage of /:   9.3% of 28.89GB   Users logged in:          1
  Memory usage: 5%                IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for eth0:    10.0.0.4


0 updates can be applied immediately.


Last login: Thu Nov  3 01:34:22 2022 from 124.111.84.213
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker pull --help

Usage:  docker pull [OPTIONS] NAME[:TAG|@DIGEST]

Pull an image or a repository from a registry

Options:
  -a, --all-tags                Download all tagged images in the repository
      --disable-content-trust   Skip image verification (default true)
      --platform string         Set platform if server is multi-platform capable
  -q, --quiet                   Suppress verbose output
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker pull ubuntu:18.04
18.04: Pulling from library/ubuntu
a404e5416296: Pull complete
Digest: sha256:ca70a834041dd1bf16cc38dfcd24f0888ec4fa431e09f3344f354cf8d1724499
Status: Downloaded newer image for ubuntu:18.04
docker.io/library/ubuntu:18.04
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
ubuntu        18.04     71eaf13299f4   9 days ago      63.1MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED          STATUS                      PORTS     NAMES
08b74eedf99b   hello-world   "/hello"   44 minutes ago   Exited (0) 44 minutes ago             nostalgic_spence
70fed50d8f16   hello-world   "/hello"   45 minutes ago   Exited (0) 45 minutes ago             affectionate_liskov
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run --help

Usage:  docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container

Options:
      --add-host list                  Add a custom host-to-IP mapping (host:ip)
  -a, --attach list                    Attach to STDIN, STDOUT or STDERR
      --blkio-weight uint16            Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)
      --blkio-weight-device list       Block IO weight (relative device weight) (default [])
      --cap-add list                   Add Linux capabilities
      --cap-drop list                  Drop Linux capabilities
      --cgroup-parent string           Optional parent cgroup for the container
      --cgroupns string                Cgroup namespace to use (host|private)
                                       'host':    Run the container in the Docker host's cgroup namespace
                                       'private': Run the container in its own private cgroup namespace
                                       '':        Use the cgroup namespace as configured by the
                                                  default-cgroupns-mode option on the daemon (default)
      --cidfile string                 Write the container ID to the file
      --cpu-period int                 Limit CPU CFS (Completely Fair Scheduler) period
      --cpu-quota int                  Limit CPU CFS (Completely Fair Scheduler) quota
      --cpu-rt-period int              Limit CPU real-time period in microseconds
      --cpu-rt-runtime int             Limit CPU real-time runtime in microseconds
  -c, --cpu-shares int                 CPU shares (relative weight)
      --cpus decimal                   Number of CPUs
      --cpuset-cpus string             CPUs in which to allow execution (0-3, 0,1)
      --cpuset-mems string             MEMs in which to allow execution (0-3, 0,1)
  -d, --detach                         Run container in background and print container ID
      --detach-keys string             Override the key sequence for detaching a container
      --device list                    Add a host device to the container
      --device-cgroup-rule list        Add a rule to the cgroup allowed devices list
      --device-read-bps list           Limit read rate (bytes per second) from a device (default [])
      --device-read-iops list          Limit read rate (IO per second) from a device (default [])
      --device-write-bps list          Limit write rate (bytes per second) to a device (default [])
      --device-write-iops list         Limit write rate (IO per second) to a device (default [])
      --disable-content-trust          Skip image verification (default true)
      --dns list                       Set custom DNS servers
      --dns-option list                Set DNS options
      --dns-search list                Set custom DNS search domains
      --domainname string              Container NIS domain name
      --entrypoint string              Overwrite the default ENTRYPOINT of the image
  -e, --env list                       Set environment variables
      --env-file list                  Read in a file of environment variables
      --expose list                    Expose a port or a range of ports
      --gpus gpu-request               GPU devices to add to the container ('all' to pass all GPUs)
      --group-add list                 Add additional groups to join
      --health-cmd string              Command to run to check health
      --health-interval duration       Time between running the check (ms|s|m|h) (default 0s)
      --health-retries int             Consecutive failures needed to report unhealthy
      --health-start-period duration   Start period for the container to initialize before starting
                                       health-retries countdown (ms|s|m|h) (default 0s)
      --health-timeout duration        Maximum time to allow one check to run (ms|s|m|h) (default 0s)
      --help                           Print usage
  -h, --hostname string                Container host name
      --init                           Run an init inside the container that forwards signals and reaps processes
  -i, --interactive                    Keep STDIN open even if not attached
      --ip string                      IPv4 address (e.g., 172.30.100.104)
      --ip6 string                     IPv6 address (e.g., 2001:db8::33)
      --ipc string                     IPC mode to use
      --isolation string               Container isolation technology
      --kernel-memory bytes            Kernel memory limit
  -l, --label list                     Set meta data on a container
      --label-file list                Read in a line delimited file of labels
      --link list                      Add link to another container
      --link-local-ip list             Container IPv4/IPv6 link-local addresses
      --log-driver string              Logging driver for the container
      --log-opt list                   Log driver options
      --mac-address string             Container MAC address (e.g., 92:d0:c6:0a:29:33)
  -m, --memory bytes                   Memory limit
      --memory-reservation bytes       Memory soft limit
      --memory-swap bytes              Swap limit equal to memory plus swap: '-1' to enable unlimited swap
      --memory-swappiness int          Tune container memory swappiness (0 to 100) (default -1)
      --mount mount                    Attach a filesystem mount to the container
      --name string                    Assign a name to the container
      --network network                Connect a container to a network
      --network-alias list             Add network-scoped alias for the container
      --no-healthcheck                 Disable any container-specified HEALTHCHECK
      --oom-kill-disable               Disable OOM Killer
      --oom-score-adj int              Tune host's OOM preferences (-1000 to 1000)
      --pid string                     PID namespace to use
      --pids-limit int                 Tune container pids limit (set -1 for unlimited)
      --platform string                Set platform if server is multi-platform capable
      --privileged                     Give extended privileges to this container
  -p, --publish list                   Publish a container's port(s) to the host
  -P, --publish-all                    Publish all exposed ports to random ports
      --pull string                    Pull image before running ("always"|"missing"|"never") (default "missing")
      --read-only                      Mount the container's root filesystem as read only
      --restart string                 Restart policy to apply when a container exits (default "no")
      --rm                             Automatically remove the container when it exits
      --runtime string                 Runtime to use for this container
      --security-opt list              Security Options
      --shm-size bytes                 Size of /dev/shm
      --sig-proxy                      Proxy received signals to the process (default true)
      --stop-signal string             Signal to stop a container (default "SIGTERM")
      --stop-timeout int               Timeout (in seconds) to stop a container
      --storage-opt list               Storage driver options for the container
      --sysctl map                     Sysctl options (default map[])
      --tmpfs list                     Mount a tmpfs directory
  -t, --tty                            Allocate a pseudo-TTY
      --ulimit ulimit                  Ulimit options (default [])
  -u, --user string                    Username or UID (format: <name|uid>[:<group|gid>])
      --userns string                  User namespace to use
      --uts string                     UTS namespace to use
  -v, --volume list                    Bind mount a volume
      --volume-driver string           Optional volume driver for the container
      --volumes-from list              Mount volumes from the specified container(s)
  -w, --workdir string                 Working directory inside the container
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run -it --name demo1 ubuntu:18.04 /bin/bash
root@92e57af231b6:/# ls -al
total 72
drwxr-xr-x   1 root root 4096 Nov  3 02:26 .
drwxr-xr-x   1 root root 4096 Nov  3 02:26 ..
-rwxr-xr-x   1 root root    0 Nov  3 02:26 .dockerenv
drwxr-xr-x   2 root root 4096 Oct 19 19:28 bin
drwxr-xr-x   2 root root 4096 Apr 24  2018 boot
drwxr-xr-x   5 root root  360 Nov  3 02:26 dev
drwxr-xr-x   1 root root 4096 Nov  3 02:26 etc
drwxr-xr-x   2 root root 4096 Apr 24  2018 home
drwxr-xr-x   8 root root 4096 May 23  2017 lib
drwxr-xr-x   2 root root 4096 Oct 19 19:28 lib64
drwxr-xr-x   2 root root 4096 Oct 19 19:28 media
drwxr-xr-x   2 root root 4096 Oct 19 19:28 mnt
drwxr-xr-x   2 root root 4096 Oct 19 19:28 opt
dr-xr-xr-x 214 root root    0 Nov  3 02:26 proc
drwx------   2 root root 4096 Oct 19 19:28 root
drwxr-xr-x   5 root root 4096 Oct 19 19:28 run
drwxr-xr-x   2 root root 4096 Oct 19 19:28 sbin
drwxr-xr-x   2 root root 4096 Oct 19 19:28 srv
dr-xr-xr-x  12 root root    0 Nov  3 02:26 sys
drwxrwxrwt   2 root root 4096 Oct 19 19:28 tmp
drwxr-xr-x  10 root root 4096 Oct 19 19:28 usr
drwxr-xr-x  11 root root 4096 Oct 19 19:28 var
root@92e57af231b6:/# exit
exit
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run -it --name demo2 ubuntu:18.04 /bin/bash
root@83eb7b31f6da:/# exit
exit
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run -it -d --name demo2 ubuntu:18.04
docker: Error response from daemon: Conflict. The container name "/demo2" is already in use by container "83eb7b31f6dad14abbbcc5df9bc4e82ebe83d1f233ac47fc30e054a7d16dd8a8". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run -it -d --name demo3 ubuntu:18.04
15b9f38ce55fb3fed5ce56920e3eedd9b562c5677deb08a1d86be2b226c3f5f3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE          COMMAND   CREATED          STATUS          PORTS     NAMES
15b9f38ce55f   ubuntu:18.04   "bash"    29 seconds ago   Up 29 seconds             demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker exec -it demo3 /bin/bash
root@15b9f38ce55f:/# ping naver.com
bash: ping: command not found
root@15b9f38ce55f:/# pwd
/
root@15b9f38ce55f:/# exit
exit
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE          COMMAND   CREATED         STATUS         PORTS     NAMES
15b9f38ce55f   ubuntu:18.04   "bash"    2 minutes ago   Up 2 minutes             demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker logs --help

Usage:  docker logs [OPTIONS] CONTAINER

Fetch the logs of a container

Options:
      --details        Show extra details provided to logs
  -f, --follow         Follow log output
      --since string   Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
  -n, --tail string    Number of lines to show from the end of the logs (default "all")
  -t, --timestamps     Show timestamps
      --until string   Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker run --name demo4 -d busybox sh -c "while true;do $(echo date);sleep 1; done"
Unable to find image 'busybox:latest' locally
latest: Pulling from library/busybox
22b70bddd3ac: Pull complete
Digest: sha256:6bdd92bf5240be1b5f3bf71324f5e371fe59f0e153b27fa1f1620f78ba16963c
Status: Downloaded newer image for busybox:latest
4351fcfe6c7dbbb3e8580eb081e59fd93f456f10eff89dac362a7c041233faf7
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS     NAMES
4351fcfe6c7d   busybox        "sh -c 'while true;d…"   14 seconds ago   Up 12 seconds             demo4
15b9f38ce55f   ubuntu:18.04   "bash"                   8 minutes ago    Up 8 minutes              demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker logs demo4
Thu Nov  3 02:44:58 UTC 2022
^C
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS     NAMES
4351fcfe6c7d   busybox        "sh -c 'while true;d…"   3 minutes ago    Up 3 minutes              demo4
15b9f38ce55f   ubuntu:18.04   "bash"                   12 minutes ago   Up 12 minutes             demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker stop demo4
demo4
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker stop demo3
demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker stop demo2
demo2
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker stop demo1
demo1
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps -a
CONTAINER ID   IMAGE          COMMAND                  CREATED             STATUS                            PORTS     NAMES
4351fcfe6c7d   busybox        "sh -c 'while true;d…"   5 minutes ago       Exited (137) About a minute ago             demo4
15b9f38ce55f   ubuntu:18.04   "bash"                   13 minutes ago      Exited (0) 39 seconds ago                   demo3
83eb7b31f6da   ubuntu:18.04   "/bin/bash"              17 minutes ago      Exited (0) 17 minutes ago                   demo2
92e57af231b6   ubuntu:18.04   "/bin/bash"              20 minutes ago      Exited (0) 18 minutes ago                   demo1
08b74eedf99b   hello-world    "/hello"                 About an hour ago   Exited (0) About an hour ago                nostalgic_spence
70fed50d8f16   hello-world    "/hello"                 About an hour ago   Exited (0) About an hour ago                affectionate_liskov
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rm demo4
demo4
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps -a
CONTAINER ID   IMAGE          COMMAND       CREATED             STATUS                          PORTS     NAMES
15b9f38ce55f   ubuntu:18.04   "bash"        14 minutes ago      Exited (0) About a minute ago             demo3
83eb7b31f6da   ubuntu:18.04   "/bin/bash"   18 minutes ago      Exited (0) 17 minutes ago                 demo2
92e57af231b6   ubuntu:18.04   "/bin/bash"   21 minutes ago      Exited (0) 19 minutes ago                 demo1
08b74eedf99b   hello-world    "/hello"      About an hour ago   Exited (0) About an hour ago              nostalgic_spence
70fed50d8f16   hello-world    "/hello"      About an hour ago   Exited (0) About an hour ago              affectionate_liskov
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rm demo3
demo3
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rm demo2
demo2
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rm demo1
demo1
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED             STATUS                         PORTS     NAMES
08b74eedf99b   hello-world   "/hello"   About an hour ago   Exited (0) About an hour ago             nostalgic_spence
70fed50d8f16   hello-world   "/hello"   About an hour ago   Exited (0) About an hour ago             affectionate_liskov
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rm hello-world
Error: No such container: hello-world
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
busybox       latest    bc01a3326866   7 days ago      1.24MB
ubuntu        18.04     71eaf13299f4   9 days ago      63.1MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rmi ubuntu
Error: No such image: ubuntu
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker rmi ubuntu:18.04
Untagged: ubuntu:18.04
Untagged: ubuntu@sha256:ca70a834041dd1bf16cc38dfcd24f0888ec4fa431e09f3344f354cf8d1724499
Deleted: sha256:71eaf13299f415122ad887b4592146a6b6f5e80cd69e0cd4650102fa3a99972c
Deleted: sha256:69f57fbceb1b420d7e4697e0f6514887b0805ee0059bea7d51e0a832962e74bf
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
busybox       latest    bc01a3326866   7 days ago      1.24MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls -al
total 36
drwxr-x--- 4 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 01:44 .
drwxr-xr-x 3 root    root    4096 Nov  3 00:37 ..
-rw------- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4135 Nov  3 01:59 .bash_history
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  220 Jan  6  2022 .bash_logout
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 3771 Jan  6  2022 .bashrc
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 00:44 .cache
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  807 Jan  6  2022 .profile
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 00:37 .ssh
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ    0 Nov  3 00:48 .sudo_as_admin_successful
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi hello.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
hello.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ hello.txt
hello.txt: command not found
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi hello.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cat hello.txt
Hello, World!
My name is Seungyoon Lee
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ touch world.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
hello.txt  world.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cat world.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ rm hello.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ rm world.txt
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls -al
total 40
drwxr-x--- 4 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 04:21 .
drwxr-xr-x 3 root    root    4096 Nov  3 00:37 ..
-rw------- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4135 Nov  3 01:59 .bash_history
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  220 Jan  6  2022 .bash_logout
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 3771 Jan  6  2022 .bashrc
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 00:44 .cache
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ  807 Jan  6  2022 .profile
drwx------ 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 00:37 .ssh
-rw-r--r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ    0 Nov  3 00:48 .sudo_as_admin_successful
-rw------- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 1206 Nov  3 04:16 .viminfo
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cd $HOME
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ mkdir docker-practice
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
docker-practice
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cd docker-practice
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ touch Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ ls
Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ vi Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ cat Dockerfile
FROM ubuntu:18.04

RUN apt-get update

CMD ["echo","Welcome to Microsoft AI School"]
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker build --help

Usage:  docker build [OPTIONS] PATH | URL | -

Build an image from a Dockerfile

Options:
      --add-host list           Add a custom host-to-IP mapping (host:ip)
      --build-arg list          Set build-time variables
      --cache-from strings      Images to consider as cache sources
      --cgroup-parent string    Optional parent cgroup for the container
      --compress                Compress the build context using gzip
      --cpu-period int          Limit the CPU CFS (Completely Fair Scheduler) period
      --cpu-quota int           Limit the CPU CFS (Completely Fair Scheduler) quota
  -c, --cpu-shares int          CPU shares (relative weight)
      --cpuset-cpus string      CPUs in which to allow execution (0-3, 0,1)
      --cpuset-mems string      MEMs in which to allow execution (0-3, 0,1)
      --disable-content-trust   Skip image verification (default true)
  -f, --file string             Name of the Dockerfile (Default is 'PATH/Dockerfile')
      --force-rm                Always remove intermediate containers
      --iidfile string          Write the image ID to the file
      --isolation string        Container isolation technology
      --label list              Set metadata for an image
  -m, --memory bytes            Memory limit
      --memory-swap bytes       Swap limit equal to memory plus swap: '-1' to enable unlimited swap
      --network string          Set the networking mode for the RUN instructions during build (default "default")
      --no-cache                Do not use cache when building the image
      --pull                    Always attempt to pull a newer version of the image
  -q, --quiet                   Suppress the build output and print image ID on success
      --rm                      Remove intermediate containers after a successful build (default true)
      --security-opt strings    Security options
      --shm-size bytes          Size of /dev/shm
  -t, --tag list                Name and optionally a tag in the 'name:tag' format
      --target string           Set the target build stage to build.
      --ulimit ulimit           Ulimit options (default [])
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker build -t my-image:v1.0.0
"docker build" requires exactly 1 argument.
See 'docker build --help'.

Usage:  docker build [OPTIONS] PATH | URL | -

Build an image from a Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker build -t my-image:v1.0.0 .
Sending build context to Docker daemon  2.048kB
Step 1/3 : FROM ubuntu:18.04
18.04: Pulling from library/ubuntu
a404e5416296: Pull complete
Digest: sha256:ca70a834041dd1bf16cc38dfcd24f0888ec4fa431e09f3344f354cf8d1724499
Status: Downloaded newer image for ubuntu:18.04
 ---> 71eaf13299f4
Step 2/3 : RUN apt-get update
 ---> Running in 70085be84675
Get:1 http://archive.ubuntu.com/ubuntu bionic InRelease [242 kB]
Get:2 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
Get:3 http://archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
Get:4 http://archive.ubuntu.com/ubuntu bionic-backports InRelease [83.3 kB]
Get:5 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [22.8 kB]
Get:6 http://archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [11.3 MB]
Get:7 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1554 kB]
Get:8 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [3035 kB]
Get:9 http://archive.ubuntu.com/ubuntu bionic/main amd64 Packages [1344 kB]
Get:10 http://archive.ubuntu.com/ubuntu bionic/restricted amd64 Packages [13.5 kB]
Get:11 http://archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [186 kB]
Get:12 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [37.1 kB]
Get:13 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [3472 kB]
Get:14 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [1217 kB]
Get:15 http://archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [2332 kB]
Get:16 http://archive.ubuntu.com/ubuntu bionic-updates/restricted amd64 Packages [1267 kB]
Get:17 http://archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [20.6 kB]
Get:18 http://archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [64.0 kB]
Fetched 26.4 MB in 5s (5564 kB/s)
Reading package lists...
Removing intermediate container 70085be84675
 ---> f6351054c512
Step 3/3 : CMD ["echo","Welcome to Microsoft AI School"]
 ---> Running in 0e01d4241198
Removing intermediate container 0e01d4241198
 ---> d53b8b3f894a
Successfully built d53b8b3f894a
Successfully tagged my-image:v1.0.0
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ ls
Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED          SIZE
my-image      v1.0.0    d53b8b3f894a   57 seconds ago   106MB
busybox       latest    bc01a3326866   7 days ago       1.24MB
ubuntu        18.04     71eaf13299f4   9 days ago       63.1MB
hello-world   latest    feb5d9fea6a5   13 months ago    13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker images | grep my-image
my-image      v1.0.0    d53b8b3f894a   2 minutes ago   106MB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ ls -al
total 12
drwxrwxr-x 2 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 04:31 .
drwxr-x--- 5 ㅁㅁㅁㅁ ㅁㅁㅁㅁ 4096 Nov  3 04:31 ..
-rw-rw-r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ   85 Nov  3 04:31 Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ ls -al | grep Dockerfile
-rw-rw-r-- 1 ㅁㅁㅁㅁ ㅁㅁㅁㅁ   85 Nov  3 04:31 Dockerfile
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
my-image      v1.0.0    d53b8b3f894a   5 minutes ago   106MB
busybox       latest    bc01a3326866   7 days ago      1.24MB
ubuntu        18.04     71eaf13299f4   9 days ago      63.1MB
hello-world   latest    feb5d9fea6a5   13 months ago   13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker run -d -p  5000:5000 --name registry registry
Unable to find image 'registry:latest' locally
latest: Pulling from library/registry
213ec9aee27d: Pull complete
4583459ba037: Pull complete
6f6a6c5733af: Pull complete
b136d5c19b1d: Pull complete
fd4a5435f342: Pull complete
Digest: sha256:2e830e8b682d73a1b70cac4343a6a541a87d5271617841d87eeb67a824a5b3f2
Status: Downloaded newer image for registry:latest
569fe0fed421bc98e2f062be996e972702a5617f02266235e8474dcb5995ac89
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker ps
CONTAINER ID   IMAGE      COMMAND                  CREATED         STATUS         PORTS                                       NAMES
569fe0fed421   registry   "/entrypoint.sh /etc…"   2 seconds ago   Up 2 seconds   0.0.0.0:5000->5000/tcp, :::5000->5000/tcp   registry
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker tag my-image:v1.0.0 localhost:5000/my-image:v1.0.0
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker images
REPOSITORY                TAG       IMAGE ID       CREATED          SIZE
my-image                  v1.0.0    d53b8b3f894a   12 minutes ago   106MB
localhost:5000/my-image   v1.0.0    d53b8b3f894a   12 minutes ago   106MB
busybox                   latest    bc01a3326866   7 days ago       1.24MB
ubuntu                    18.04     71eaf13299f4   9 days ago       63.1MB
registry                  latest    dcb3d42c1744   3 weeks ago      24.1MB
hello-world               latest    feb5d9fea6a5   13 months ago    13.3kB
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ docker push localhost:5000/my-image:v1.0.0
The push refers to repository [localhost:5000/my-image]
3b93c68f2f48: Pushed
69f57fbceb1b: Pushed
v1.0.0: digest: sha256:44d53845021e81762540da2de3252c1c243b6a341ad6610f6a6f7865248f4adf size: 741
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ curl -X GET https://localhost:5000/v2/_catalog
curl: (35) error:0A00010B:SSL routines::wrong version number
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ curl -X GET http://localhost:5000/v2/_catalog
{"repositories":["my-image"]}
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ curl -X GET http://localhost:5000/v2/tags/list
404 page not found
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ curl -X GET http://localhost:5000/v2/my-image/tags/list
{"name":"my-image","tags":["v1.0.0"]}
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ cat Dockerfile
FROM ubuntu:18.04

RUN apt-get update

CMD ["echo","Welcome to Microsoft AI School"]
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~/docker-practice$ cd ..
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: ㅁㅁㅁㅁ
Password:
WARNING! Your password will be stored unencrypted in /home/ㅁㅁㅁㅁ/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker tag my-image:v1.0.0 ㅁㅁㅁㅁ/my-image:v1.0.0
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker push ㅁㅁㅁㅁ/my-image:v1.0.0
The push refers to repository [docker.io/ㅁㅁㅁㅁ/my-image]
3b93c68f2f48: Pushed
69f57fbceb1b: Mounted from library/ubuntu
v1.0.0: digest: sha256:44d53845021e81762540da2de3252c1c243b6a341ad6610f6a6f7865248f4adf size: 741
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ docker pull ㅁㅁㅁㅁ/my-image:v1.0.0
v1.0.0: Pulling from ㅁㅁㅁㅁ/my-image
Digest: sha256:44d53845021e81762540da2de3252c1c243b6a341ad6610f6a6f7865248f4adf
Status: Image is up to date for ㅁㅁㅁㅁ/my-image:v1.0.0
docker.io/ㅁㅁㅁㅁ/my-image:v1.0.0
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls -a
.  ..  .bash_history  .bash_logout  .bashrc  .cache  .docker  .profile  .ssh  .sudo_as_admin_successful  .viminfo  docker-practice
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
docker-practice
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -L0 https://storage.googleapis.com/minikube/releases/v1.22.0/minikube-linux-amd64
Warning: Binary output can mess up your terminal. Use "--output -" to tell
Warning: curl to output it to your terminal anyway, or consider "--output
Warning: <FILE>" to save to a file.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -LO https://storage.googleapis.com/minikube/releases/v1.22.0/minikube-linux-amd64
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 66.5M  100 66.5M    0     0  55.1M      0  0:00:01  0:00:01 --:--:-- 55.1M
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo install minikube-linux-amd64 /usr/local/bin/minikube
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube --help
minikube provisions and manages local Kubernetes clusters optimized for development workflows.

Basic Commands:
  start          Starts a local Kubernetes cluster
  status         Gets the status of a local Kubernetes cluster
  stop           Stops a running local Kubernetes cluster
  delete         Deletes a local Kubernetes cluster
  dashboard      Access the Kubernetes dashboard running within the minikube cluster
  pause          pause Kubernetes
  unpause        unpause Kubernetes

Images Commands:
  docker-env     Configure environment to use minikube's Docker daemon
  podman-env     Configure environment to use minikube's Podman service
  cache          Add, delete, or push a local image into minikube
  image          Manage images

Configuration and Management Commands:
  addons         Enable or disable a minikube addon
  config         Modify persistent configuration values
  profile        Get or list the current profiles (clusters)
  update-context Update kubeconfig in case of an IP or port change

Networking and Connectivity Commands:
  service        Returns a URL to connect to a service
  tunnel         Connect to LoadBalancer services

Advanced Commands:
  mount          Mounts the specified directory into minikube
  ssh            Log into the minikube environment (for debugging)
  kubectl        Run a kubectl binary matching the cluster version
  node           Add, remove, or list additional nodes
  cp             Copy the specified file into minikube

Troubleshooting Commands:
  ssh-key        Retrieve the ssh identity key path of the specified node
  ssh-host       Retrieve the ssh host key of the specified node
  ip             Retrieves the IP address of the specified node
  logs           Returns logs to debug a local Kubernetes cluster
  update-check   Print current and latest version number
  version        Print the version of minikube

Other Commands:
  completion     Generate command completion for a shell

Use "minikube <command> --help" for more information about a given command.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube version
minikube version: v1.22.0
commit: a03fbcf166e6f74ef224d4a63be4277d017bb62e
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -LO https://dl.k8s.io/release/v1.22.1/bin/linux/kubectl
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   138  100   138    0     0    601      0 --:--:-- --:--:-- --:--:--   602
100   214  100   214    0     0    474      0 --:--:-- --:--:-- --:--:--   474
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo install -o root -m 0755 kubectl /usr/local/bin/kubectl
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl --help
/usr/local/bin/kubectl: line 1: syntax error near unexpected token `<'
/usr/local/bin/kubectl: line 1: `<?xml version='1.0' encoding='UTF-8'?><Error><Code>NoSuchKey</Code><Message>The specified key does not exist.</Message><Details>No such object: kubernetes-release/release/v1.22.1/bin/linux/kubectl</Details></Error>'
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl --help
/usr/local/bin/kubectl: line 1: syntax error near unexpected token `<'
/usr/local/bin/kubectl: line 1: `<?xml version='1.0' encoding='UTF-8'?><Error><Code>NoSuchKey</Code><Message>The specified key does not exist.</Message><Details>No such object: kubernetes-release/release/v1.22.1/bin/linux/kubectl</Details></Error>'
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo install -o root -m 0755 kubectl /usr/local/bin/kubectl
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl --help
/usr/local/bin/kubectl: line 1: syntax error near unexpected token `<'
/usr/local/bin/kubectl: line 1: `<?xml version='1.0' encoding='UTF-8'?><Error><Code>NoSuchKey</Code><Message>The specified key does not exist.</Message><Details>No such object: kubernetes-release/release/v1.22.1/bin/linux/kubectl</Details></Error>'
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl -help
/usr/local/bin/kubectl: line 1: syntax error near unexpected token `<'
/usr/local/bin/kubectl: line 1: `<?xml version='1.0' encoding='UTF-8'?><Error><Code>NoSuchKey</Code><Message>The specified key does not exist.</Message><Details>No such object: kubernetes-release/release/v1.22.1/bin/linux/kubectl</Details></Error>'
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -LO https://dl.k8s.io/release/v1.22.1/bin/linux/amd64/kubectl
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   138  100   138    0     0    633      0 --:--:-- --:--:-- --:--:--   633
100 44.7M  100 44.7M    0     0  58.7M      0 --:--:-- --:--:-- --:--:-- 58.7M
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl --help
kubectl controls the Kubernetes cluster manager.

 Find more information at: https://kubernetes.io/docs/reference/kubectl/overview/

Basic Commands (Beginner):
  create        Create a resource from a file or from stdin
  expose        Take a replication controller, service, deployment or pod and expose it as a new Kubernetes service
  run           Run a particular image on the cluster
  set           Set specific features on objects

Basic Commands (Intermediate):
  explain       Get documentation for a resource
  get           Display one or many resources
  edit          Edit a resource on the server
  delete        Delete resources by file names, stdin, resources and names, or by resources and label selector

Deploy Commands:
  rollout       Manage the rollout of a resource
  scale         Set a new size for a deployment, replica set, or replication controller
  autoscale     Auto-scale a deployment, replica set, stateful set, or replication controller

Cluster Management Commands:
  certificate   Modify certificate resources.
  cluster-info  Display cluster information
  top           Display resource (CPU/memory) usage
  cordon        Mark node as unschedulable
  uncordon      Mark node as schedulable
  drain         Drain node in preparation for maintenance
  taint         Update the taints on one or more nodes

Troubleshooting and Debugging Commands:
  describe      Show details of a specific resource or group of resources
  logs          Print the logs for a container in a pod
  attach        Attach to a running container
  exec          Execute a command in a container
  port-forward  Forward one or more local ports to a pod
  proxy         Run a proxy to the Kubernetes API server
  cp            Copy files and directories to and from containers
  auth          Inspect authorization
  debug         Create debugging sessions for troubleshooting workloads and nodes

Advanced Commands:
  diff          Diff the live version against a would-be applied version
  apply         Apply a configuration to a resource by file name or stdin
  patch         Update fields of a resource
  replace       Replace a resource by file name or stdin
  wait          Experimental: Wait for a specific condition on one or many resources
  kustomize     Build a kustomization target from a directory or URL.

Settings Commands:
  label         Update the labels on a resource
  annotate      Update the annotations on a resource
  completion    Output shell completion code for the specified shell (bash or zsh)

Other Commands:
  api-resources Print the supported API resources on the server
  api-versions  Print the supported API versions on the server, in the form of "group/version"
  config        Modify kubeconfig files
  plugin        Provides utilities for interacting with plugins
  version       Print the client and server version information

Usage:
  kubectl [flags] [options]

Use "kubectl <command> --help" for more information about a given command.
Use "kubectl options" for a list of global command-line options (applies to all commands).
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl version
Client Version: version.Info{Major:"1", Minor:"22", GitVersion:"v1.22.1", GitCommit:"632ed300f2c34f6d6d15ca4cef3d3c7073412212", GitTreeState:"clean", BuildDate:"2021-08-19T15:45:37Z", GoVersion:"go1.16.7", Compiler:"gc", Platform:"linux/amd64"}
The connection to the server localhost:8080 was refused - did you specify the right host or port?
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube start --drver=docker
Error: unknown flag: --drver
See 'minikube start --help' for usage.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube start --driver=docker
😄  minikube v1.22.0 on Ubuntu 22.04
🎉  minikube 1.27.1 is available! Download it: https://github.com/kubernetes/minikube/releases/tag/v1.27.1
💡  To disable this notice, run: 'minikube config set WantUpdateNotification false'

✨  Using the docker driver based on user configuration
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.21.2 preload ...
    > preloaded-images-k8s-v11-v1...: 502.14 MiB / 502.14 MiB  100.00% 105.47 M
    > gcr.io/k8s-minikube/kicbase...: 361.09 MiB / 361.09 MiB  100.00% 10.87 Mi
🔥  Creating docker container (CPUs=2, Memory=4000MB) ...
🐳  Preparing Kubernetes v1.21.2 on Docker 20.10.7 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
No resources found in default namespace.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod -n kube-system
NAME                               READY   STATUS    RESTARTS   AGE
coredns-558bd4d5db-jjsgk           1/1     Running   0          3m59s
etcd-minikube                      1/1     Running   0          4m12s
kube-apiserver-minikube            1/1     Running   0          4m12s
kube-controller-manager-minikube   1/1     Running   0          4m12s
kube-proxy-z6rpv                   1/1     Running   0          4m
kube-scheduler-minikube            1/1     Running   0          4m12s
storage-provisioner                1/1     Running   0          4m10s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube delete
🔥  Deleting "minikube" in docker ...
🔥  Deleting container "minikube" ...
🔥  Removing /home/ㅁㅁㅁㅁ/.minikube/machines/minikube ...
💀  Removed all traces of the "minikube" cluster.
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube start --driver=docker
😄  minikube v1.22.0 on Ubuntu 22.04
✨  Using the docker driver based on user configuration
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
🔥  Creating docker container (CPUs=2, Memory=4000MB) ...
🐳  Preparing Kubernetes v1.21.2 on Docker 20.10.7 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: default-storageclass, storage-provisioner
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi pod.yaml
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f pod.yaml
pod/counter created
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cat pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: counter
spec:
  containers:
  - name: count
    image: busybox
    args: [/bin/sh, -c, 'i=0;while true;do echo "$i: $(date)"; sleep 1;done']
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME      READY   STATUS    RESTARTS   AGE
counter   1/1     Running   0          104s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS   AGE
default       counter                            1/1     Running   0          7m8s
kube-system   coredns-558bd4d5db-qbhbq           1/1     Running   0          18m
kube-system   etcd-minikube                      1/1     Running   0          18m
kube-system   kube-apiserver-minikube            1/1     Running   0          18m
kube-system   kube-controller-manager-minikube   1/1     Running   0          18m
kube-system   kube-proxy-p2t5w                   1/1     Running   0          18m
kube-system   kube-scheduler-minikube            1/1     Running   0          18m
kube-system   storage-provisioner                1/1     Running   0          18m
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl describe pod counter
Name:         counter
Namespace:    default
Priority:     0
Node:         minikube/192.168.49.2
Start Time:   Thu, 03 Nov 2022 07:22:36 +0000
Labels:       <none>
Annotations:  <none>
Status:       Running
IP:           172.17.0.3
IPs:
  IP:  172.17.0.3
Containers:
  count:
    Container ID:  docker://8eeb5e623d8b6520e8fa48a1306cb5c7d25524057e73459f71b55b5c1d95ca19
    Image:         busybox
    Image ID:      docker-pullable://busybox@sha256:6bdd92bf5240be1b5f3bf71324f5e371fe59f0e153b27fa1f1620f78ba16963c
    Port:          <none>
    Host Port:     <none>
    Args:
      /bin/sh
      -c
      i=0;while true;do echo "$i: $(date)"; sleep 1;done
    State:          Running
      Started:      Thu, 03 Nov 2022 07:22:42 +0000
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-kpbgw (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  kube-api-access-kpbgw:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age    From               Message
  ----    ------     ----   ----               -------
  Normal  Scheduled  8m19s  default-scheduler  Successfully assigned default/counter to minikube
  Normal  Pulling    8m18s  kubelet            Pulling image "busybox"
  Normal  Pulled     8m13s  kubelet            Successfully pulled image "busybox" in 4.586643572s
  Normal  Created    8m13s  kubelet            Created container count
  Normal  Started    8m13s  kubelet            Started container count
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod -o wide
NAME      READY   STATUS    RESTARTS   AGE   IP           NODE       NOMINATED NODE   READINESS GATES
counter   1/1     Running   0          10m   172.17.0.3   minikube   <none>           <none>
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod -w
NAME      READY   STATUS    RESTARTS   AGE
counter   1/1     Running   0          12m
^Cㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl logs counter
0: Thu Nov  3 07:36:46 UTC 2022
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl logs counter -f
0: Thu Nov  3 07:39:22 UTC 2022
^C
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl exec -it counter /bin/bash
kubectl exec [POD] [COMMAND] is DEPRECATED and will be removed in a future version. Use kubectl exec [POD] -- [COMMAND] instead.
OCI runtime exec failed: exec failed: container_linux.go:380: starting container process caused: exec: "/bin/bash": stat /bin/bash: no such file or directory: unknown
command terminated with exit code 126
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl exec -it counter sh
kubectl exec [POD] [COMMAND] is DEPRECATED and will be removed in a future version. Use kubectl exec [POD] -- [COMMAND] instead.
/ # ps
PID   USER     TIME  COMMAND
    1 root      0:00 /bin/sh -c i=0;while true;do echo "$i: $(date)"; sleep 1;done
 2299 root      0:00 sh
 2331 root      0:00 sleep 1
 2332 root      0:00 ps
/ # exit
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl delete pod counter
pod "counter" deleted
^C
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ㅁㅁkubectl delete pod -f pod.yaml
ㅁㅁkubectl: command not found
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
docker-practice  kubectl  minikube-linux-amd64  pod.yaml
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi Deployment.yaml

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ls
Deployment.yaml  docker-practice  kubectl  minikube-linux-amd64  pod.yaml
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ cd pod.yaml
-bash: cd: pod.yaml: Not a directory
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f Deployment.yaml
error: error validating "Deployment.yaml": error validating data: ValidationError(Deployment.spec.template.spec.containers[0]): unknown field "-containerPort" in io.k8s.api.core.v1.Container; if you choose to ignore these errors, turn validation off with --validate=false
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f Deployment.yaml
error: error validating "Deployment.yaml": error validating data: ValidationError(Deployment.spec.template.spec.containers[0]): unknown field "-containerPort" in io.k8s.api.core.v1.Container; if you choose to ignore these errors, turn validation off with --validate=false
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi Deployment.yaml
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f Deployment.yaml
deployment.apps/nginx-deployment created
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get deployment
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   3/3     3            3           25s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get deployment
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   3/3     3            3           37s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get deployment
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   3/3     3            3           71s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-66b6c48dd5-8277n   1/1     Running   0          3m23s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running   0          3m23s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running   0          3m23s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl delete pod nginx-deployment-66b6c48dd5-8277n
pod "nginx-deployment-66b6c48dd5-8277n" deleted
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running   0          7m24s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Running   0          23s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running   0          7m24s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl scale deployment/nginx-deployment --replicas=5
deployment.apps/nginx-deployment scaled
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-66b6c48dd5-554n9   1/1     Running   0          27s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running   0          10m
nginx-deployment-66b6c48dd5-sgps5   1/1     Running   0          27s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Running   0          3m28s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running   0          10m
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl scale deployment/nginx-deployment --replicas=20
deployment.apps/nginx-deployment scaled
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS              RESTARTS   AGE
nginx-deployment-66b6c48dd5-2hf2s   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-554n9   1/1     Running             0          83s
nginx-deployment-66b6c48dd5-59qln   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-5nrzr   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-6bfs2   0/1     ContainerCreating   0          3s
nginx-deployment-66b6c48dd5-82q8n   0/1     ContainerCreating   0          3s
nginx-deployment-66b6c48dd5-btr2d   0/1     ContainerCreating   0          2s
nginx-deployment-66b6c48dd5-d54kc   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-hscgn   0/1     ContainerCreating   0          3s
nginx-deployment-66b6c48dd5-ljffb   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-lm66w   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-pkfjc   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running             0          11m
nginx-deployment-66b6c48dd5-sgps5   1/1     Running             0          83s
nginx-deployment-66b6c48dd5-svpnc   0/1     Pending             0          2s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Running             0          4m24s
nginx-deployment-66b6c48dd5-tjpbx   0/1     ContainerCreating   0          3s
nginx-deployment-66b6c48dd5-v2dq7   0/1     ContainerCreating   0          3s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running             0          11m
nginx-deployment-66b6c48dd5-xb6tz   0/1     Pending             0          2s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS              RESTARTS   AGE
nginx-deployment-66b6c48dd5-2hf2s   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-554n9   1/1     Running             0          88s
nginx-deployment-66b6c48dd5-59qln   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-5nrzr   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-6bfs2   0/1     ContainerCreating   0          8s
nginx-deployment-66b6c48dd5-82q8n   0/1     ContainerCreating   0          8s
nginx-deployment-66b6c48dd5-btr2d   1/1     Running             0          7s
nginx-deployment-66b6c48dd5-d54kc   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-hscgn   0/1     ContainerCreating   0          8s
nginx-deployment-66b6c48dd5-ljffb   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-lm66w   0/1     Pending             0          7s
nginx-deployment-66b6c48dd5-pkfjc   0/1     ContainerCreating   0          7s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running             0          11m
nginx-deployment-66b6c48dd5-sgps5   1/1     Running             0          88s
nginx-deployment-66b6c48dd5-svpnc   0/1     Pending             0          7s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Running             0          4m29s
nginx-deployment-66b6c48dd5-tjpbx   0/1     ContainerCreating   0          8s
nginx-deployment-66b6c48dd5-v2dq7   1/1     Running             0          8s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running             0          11m
nginx-deployment-66b6c48dd5-xb6tz   0/1     ContainerCreating   0          7s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-66b6c48dd5-2hf2s   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-554n9   1/1     Running   0          2m
nginx-deployment-66b6c48dd5-59qln   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-5nrzr   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-6bfs2   1/1     Running   0          40s
nginx-deployment-66b6c48dd5-82q8n   1/1     Running   0          40s
nginx-deployment-66b6c48dd5-btr2d   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-d54kc   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-hscgn   1/1     Running   0          40s
nginx-deployment-66b6c48dd5-ljffb   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-lm66w   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-pkfjc   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Running   0          12m
nginx-deployment-66b6c48dd5-sgps5   1/1     Running   0          2m
nginx-deployment-66b6c48dd5-svpnc   1/1     Running   0          39s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Running   0          5m1s
nginx-deployment-66b6c48dd5-tjpbx   1/1     Running   0          40s
nginx-deployment-66b6c48dd5-v2dq7   1/1     Running   0          40s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running   0          12m
nginx-deployment-66b6c48dd5-xb6tz   1/1     Running   0          39s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl scale deployment/nginx-deployment --replicas=1
deployment.apps/nginx-deployment scaled
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS        RESTARTS   AGE
nginx-deployment-66b6c48dd5-2hf2s   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-554n9   1/1     Terminating   0          2m57s
nginx-deployment-66b6c48dd5-59qln   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-5nrzr   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-6bfs2   1/1     Terminating   0          97s
nginx-deployment-66b6c48dd5-82q8n   1/1     Terminating   0          97s
nginx-deployment-66b6c48dd5-btr2d   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-d54kc   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-hscgn   1/1     Terminating   0          97s
nginx-deployment-66b6c48dd5-ljffb   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-lm66w   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-pkfjc   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-rq7gq   1/1     Terminating   0          12m
nginx-deployment-66b6c48dd5-sgps5   1/1     Terminating   0          2m57s
nginx-deployment-66b6c48dd5-svpnc   1/1     Terminating   0          96s
nginx-deployment-66b6c48dd5-tfvjq   1/1     Terminating   0          5m58s
nginx-deployment-66b6c48dd5-tjpbx   1/1     Terminating   0          97s
nginx-deployment-66b6c48dd5-v2dq7   1/1     Terminating   0          97s
nginx-deployment-66b6c48dd5-w9lrn   1/1     Running       0          12m
nginx-deployment-66b6c48dd5-xb6tz   1/1     Terminating   0          96s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl delete deployment nginx-deployment
deployment.apps "nginx-deployment" deleted
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f Deployment.yaml
deployment.apps/nginx-deployment created
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl scale deployment/nginx-deployment --replicas=3
deployment.apps/nginx-deployment scaled
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-66b6c48dd5-84gjm   1/1     Running   0          43s
nginx-deployment-66b6c48dd5-pdnm5   1/1     Running   0          43s
nginx-deployment-66b6c48dd5-wd2w5   1/1     Running   0          43s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get pod -o wide
NAME                                READY   STATUS    RESTARTS   AGE     IP           NODE       NOMINATED NODE   READINESS GATES
nginx-deployment-66b6c48dd5-84gjm   1/1     Running   0          2m34s   172.17.0.3   minikube   <none>           <none>
nginx-deployment-66b6c48dd5-pdnm5   1/1     Running   0          2m34s   172.17.0.4   minikube   <none>           <none>
nginx-deployment-66b6c48dd5-wd2w5   1/1     Running   0          2m34s   172.17.0.5   minikube   <none>           <none>
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -X GET 172.17.0.4 -vvv
Note: Unnecessary use of -X or --request, GET is already inferred.
*   Trying 172.17.0.4:80...
* connect to 172.17.0.4 port 80 failed: No route to host
* Failed to connect to 172.17.0.4 port 80 after 3072 ms: No route to host
* Closing connection 0
curl: (7) Failed to connect to 172.17.0.4 port 80 after 3072 ms: No route to host
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ $ ping yahoo.com
$: command not found
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ping naver.com
PING naver.com (223.130.195.200) 56(84) bytes of data.
ping yahoo.com
^C
--- naver.com ping statistics ---
27 packets transmitted, 0 received, 100% packet loss, time 26608ms

ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ ping google.com
PING google.com (172.217.31.142) 56(84) bytes of data.
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=1 ttl=56 time=1.42 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=2 ttl=56 time=1.76 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=3 ttl=56 time=1.40 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=4 ttl=56 time=1.38 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=5 ttl=56 time=1.68 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=6 ttl=56 time=1.52 ms
64 bytes from nrt20s08-in-f14.1e100.net (172.217.31.142): icmp_seq=7 ttl=56 time=1.37 ms
^C
--- google.com ping statistics ---
7 packets transmitted, 7 received, 0% packet loss, time 6009ms
rtt min/avg/max/mdev = 1.374/1.504/1.760/0.144 ms
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ vi Service.yaml
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl apply -f Service.yaml
service/my-nginx created
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ kubectl get service
NAME         TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.96.0.1      <none>        443/TCP        97m
my-nginx     NodePort    10.96.92.183   <none>        80:32724/TCP   8s
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -X 10.96.92.183:80
curl: no URL specified!
curl: try 'curl --help' or 'curl --manual' for more information
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -X GET 10.96.92.183
^C
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$ curl -X GET 10.96.92.183:80 -vvv
Note: Unnecessary use of -X or --request, GET is already inferred.
*   Trying 10.96.92.183:80...
^C
ㅁㅁㅁㅁ@ㅁㅁㅁㅁubuntu:~$