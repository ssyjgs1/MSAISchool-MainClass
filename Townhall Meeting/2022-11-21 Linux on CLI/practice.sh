PS C:\Users\user> cd .\Downloads\
PS C:\Users\user\Downloads> ssh -i .\linuxubuntu_key.pem tony@ㅁㅁㅁㅁ
Welcome to Ubuntu 20.04.5 LTS (GNU/Linux 5.15.0-1023-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon Nov 21 00:53:09 UTC 2022

  System load:  0.07              Processes:             109
  Usage of /:   5.1% of 28.89GB   Users logged in:       0
  Memory usage: 7%                IPv4 address for eth0: 10.12.0.4
  Swap usage:   0%


0 updates can be applied immediately.

New release '22.04.1 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Mon Nov 21 00:33:39 2022 from 124.111.84.213
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

tony@linuxubuntu:~$ ls
tony@linuxubuntu:~$ date
Mon Nov 21 00:53:18 UTC 2022
tony@linuxubuntu:~$ man date
tony@linuxubuntu:~$ grep tony /etc/passwd
tony:x:1000:1000:Ubuntu:/home/tony:/bin/bash
tony@linuxubuntu:~$ echo linux
linux
tony@linuxubuntu:~$ echo "linux ubuntu" -n ubuntu
linux ubuntu -n ubuntu
tony@linuxubuntu:~$ echo "linux ubuntu" -n "ubuntu"
linux ubuntu -n ubuntu
tony@linuxubuntu:~$ man printf
tony@linuxubuntu:~$ ls -l
total 0
tony@linuxubuntu:~$ ls *
ls: cannot access '*': No such file or directory
tony@linuxubuntu:~$ cd ~
tony@linuxubuntu:~$ ls *.deb
ls: cannot access '*.deb': No such file or directory
tony@linuxubuntu:~$ mkdir temp
tony@linuxubuntu:~$ ls
temp
tony@linuxubuntu:~$ cd /etc
tony@linuxubuntu:/etc$ ls
ModemManager                   cron.daily            grub.d           locale.alias    networkd-dispatcher      rc4.d             sysctl.conf
NetworkManager                 cron.hourly           gshadow          locale.gen      networks                 rc5.d             sysctl.d
PackageKit                     cron.monthly          gshadow-         localtime       newt                     rc6.d             systemd
X11                            cron.weekly           gss              logcheck        nsswitch.conf            rcS.d             terminfo
adduser.conf                   crontab               hdparm.conf      login.defs      opt                      request-key.conf  timezone
alternatives                   cryptsetup-initramfs  host.conf        logrotate.conf  os-release               request-key.d     tmpfiles.d
apparmor                       crypttab              hostname         logrotate.d     overlayroot.conf         resolv.conf       ubuntu-advantage
apparmor.d                     dbus-1                hosts            lsb-release     overlayroot.local.conf   rmt               ucf.conf
apport                         dconf                 hosts.allow      ltrace.conf     pam.conf                 rpc               udev
apt                            debconf.conf          hosts.deny       lvm             pam.d                    rsyslog.conf      udisks2
at.deny                        debian_version        init             machine-id      passwd                   rsyslog.d         ufw
audisp                         default               init.d           magic           passwd-                  screenrc          update-manager
audit                          deluser.conf          initramfs-tools  magic.mime      perl                     security          update-motd.d
bash.bashrc                    depmod.d              inputrc          mailcap         pki                      selinux           update-notifier
bash_completion                dhcp                  iproute2         mailcap.order   pm                       services          usb_modeswitch.conf
bash_completion.d              dpkg                  iscsi            manpath.config  polkit-1                 shadow            usb_modeswitch.d
bindresvport.blacklist         e2scrub.conf          issue            mdadm           pollinate                shadow-           vim
binfmt.d                       ec2_version           issue.net        mime.types      popularity-contest.conf  shells            vmware-tools
byobu                          environment           kernel           mke2fs.conf     ppp                      skel              vtrgb
ca-certificates                ethertypes            kernel-img.conf  modprobe.d      profile                  sos               waagent.conf
ca-certificates.conf           fonts                 landscape        modules         profile.d                ssh               wgetrc
ca-certificates.conf.dpkg-old  fstab                 ld.so.cache      modules-load.d  protocols                ssl               xattr.conf
calendar                       fuse.conf             ld.so.conf       mtab            python3                  subgid            xdg
chrony                         fwupd                 ld.so.conf.d     multipath       python3.8                subgid-           zsh_command_not_found
cifs-utils                     gai.conf              ldap             multipath.conf  rc0.d                    subuid
cloud                          groff                 legal            nanorc          rc1.d                    subuid-
console-setup                  group                 libaudit.conf    netplan         rc2.d                    sudoers
cron.d                         group-                libblockdev      network         rc3.d                    sudoers.d
tony@linuxubuntu:/etc$ ls passwd
passwd
tony@linuxubuntu:/etc$ cp passwd ~/temp
tony@linuxubuntu:/etc$ cd ~
tony@linuxubuntu:~$ ls
temp
tony@linuxubuntu:~$ ls temp/
passwd
tony@linuxubuntu:~$ date ; ls
Mon Nov 21 01:28:33 UTC 2022
temp
tony@linuxubuntu:~$ ls -al /
total 72
drwxr-xr-x  19 root root  4096 Nov 21 01:00 .
drwxr-xr-x  19 root root  4096 Nov 21 01:00 ..
-rw-r--r--   1 root root     0 Nov 21 01:00 1
lrwxrwxrwx   1 root root     7 Nov 15 21:38 bin -> usr/bin
drwxr-xr-x   4 root root  4096 Nov 15 21:57 boot
drwxr-xr-x  19 root root  4040 Nov 21 00:29 dev
drwxr-xr-x 103 root root  4096 Nov 21 01:14 etc
drwxr-xr-x   4 root root  4096 Nov 21 01:00 home
lrwxrwxrwx   1 root root     7 Nov 15 21:38 lib -> usr/lib
lrwxrwxrwx   1 root root     9 Nov 15 21:38 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 Nov 15 21:38 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 Nov 15 21:38 libx32 -> usr/libx32
drwx------   2 root root 16384 Nov 15 21:41 lost+found
drwxr-xr-x   2 root root  4096 Nov 15 21:38 media
drwxr-xr-x   3 root root  4096 Nov 21 00:29 mnt
drwxr-xr-x   5 root root  4096 Nov 21 01:00 opt
dr-xr-xr-x 184 root root     0 Nov 21 00:29 proc
drwx------   6 root root  4096 Nov 21 01:14 root
drwxr-xr-x  27 root root  1020 Nov 21 01:14 run
lrwxrwxrwx   1 root root     8 Nov 15 21:38 sbin -> usr/sbin
drwxr-xr-x   6 root root  4096 Nov 15 21:41 snap
drwxr-xr-x   2 root root  4096 Nov 15 21:38 srv
dr-xr-xr-x  12 root root     0 Nov 21 00:29 sys
drwxrwxrwt  12 root root  4096 Nov 21 01:17 tmp
drwxr-xr-x  14 root root  4096 Nov 15 21:39 usr
drwxr-xr-x  13 root root  4096 Nov 15 21:40 var
tony@linuxubuntu:~$ ls -al / | more
total 72
drwxr-xr-x  19 root root  4096 Nov 21 01:00 .
drwxr-xr-x  19 root root  4096 Nov 21 01:00 ..
-rw-r--r--   1 root root     0 Nov 21 01:00 1
lrwxrwxrwx   1 root root     7 Nov 15 21:38 bin -> usr/bin
drwxr-xr-x   4 root root  4096 Nov 15 21:57 boot
drwxr-xr-x  19 root root  4040 Nov 21 00:29 dev
drwxr-xr-x 103 root root  4096 Nov 21 01:14 etc
drwxr-xr-x   4 root root  4096 Nov 21 01:00 home
lrwxrwxrwx   1 root root     7 Nov 15 21:38 lib -> usr/lib
lrwxrwxrwx   1 root root     9 Nov 15 21:38 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 Nov 15 21:38 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 Nov 15 21:38 libx32 -> usr/libx32
drwx------   2 root root 16384 Nov 15 21:41 lost+found
drwxr-xr-x   2 root root  4096 Nov 15 21:38 media
drwxr-xr-x   3 root root  4096 Nov 21 00:29 mnt
drwxr-xr-x   5 root root  4096 Nov 21 01:00 opt
dr-xr-xr-x 185 root root     0 Nov 21 00:29 proc
drwx------   6 root root  4096 Nov 21 01:14 root
drwxr-xr-x  27 root root  1020 Nov 21 01:14 run
lrwxrwxrwx   1 root root     8 Nov 15 21:38 sbin -> usr/sbin
drwxr-xr-x   6 root root  4096 Nov 15 21:41 snap
drwxr-xr-x   2 root root  4096 Nov 15 21:38 srv
dr-xr-xr-x  12 root root     0 Nov 21 00:29 sys
drwxrwxrwt  12 root root  4096 Nov 21 01:17 tmp
drwxr-xr-x  14 root root  4096 Nov 15 21:39 usr
drwxr-xr-x  13 root root  4096 Nov 15 21:40 var
tony@linuxubuntu:~$ some = test

Command 'some' not found, did you mean:

  command 'tome' from deb tome (2.4~0.git.2015.12.29-1.2build4)

Try: sudo apt install <deb name>

tony@linuxubuntu:~$ some=test
tony@linuxubuntu:~$ history
    1  ls
    2  ls -a
    3  ls .ssh
    4  ls -a .ssh
    5  date
    6  man clear
    7  man ssh
    8  man cd
    9  passwd
   10  ls
   11  date
   12  man date
   13  grep tony /etc/passwd
   14  echo linux
   15  echo "linux ubuntu" -n ubuntu
   16  echo "linux ubuntu" -n "ubuntu"
   17  man printf
   18  ls -l
   19  ls *
   20  cd ~
   21  ls *.deb
   22  mkdir temp
   23  ls
   24  cd /etc
   25  ls
   26  ls passwd
   27  cp passwd ~/temp
   28  cd ~
   29  ls
   30  ls temp/
   31  date ; ls
   32  ls -al /
   33  ls -al / | more
   34  some = test
   35  some=test
   36  history
tony@linuxubuntu:~$ history !11
history date
-bash: history: date: numeric argument required
tony@linuxubuntu:~$ file .profile
.profile: ASCII text
tony@linuxubuntu:~$ file /bin/bash
/bin/bash: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=2a9f157890930ced4c3ad0e74fc1b1b84aad71e6, for GNU/Linux 3.2.0, stripped
tony@linuxubuntu:~$ pwd
/home/tony
tony@linuxubuntu:~$ cd temp/
tony@linuxubuntu:~/temp$ pwd
/home/tony/temp
tony@linuxubuntu:~/temp$ chmod g-w ls.txt
chmod: cannot access 'ls.txt': No such file or directory
tony@linuxubuntu:~/temp$ ls.txt
ls.txt: command not found
tony@linuxubuntu:~/temp$ help
GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
These shell commands are defined internally.  Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list.

A star (*) next to a name means that the command is disabled.

 job_spec [&]                                                                history [-c] [-d offset] [n] or history -anrw [filename] or history -ps >
 (( expression ))                                                            if COMMANDS; then COMMANDS; [ elif COMMANDS; then COMMANDS; ]... [ else >
 . filename [arguments]                                                      jobs [-lnprs] [jobspec ...] or jobs -x command [args]
 :                                                                           kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [s>
 [ arg... ]                                                                  let arg [arg ...]
 [[ expression ]]                                                            local [option] name[=value] ...
 alias [-p] [name[=value] ... ]                                              logout [n]
 bg [job_spec ...]                                                           mapfile [-d delim] [-n count] [-O origin] [-s count] [-t] [-u fd] [-C ca>
 bind [-lpsvPSVX] [-m keymap] [-f filename] [-q name] [-u name] [-r keyseq>  popd [-n] [+N | -N]
 break [n]                                                                   printf [-v var] format [arguments]
 builtin [shell-builtin [arg ...]]                                           pushd [-n] [+N | -N | dir]
 caller [expr]                                                               pwd [-LP]
 case WORD in [PATTERN [| PATTERN]...) COMMANDS ;;]... esac                  read [-ers] [-a array] [-d delim] [-i text] [-n nchars] [-N nchars] [-p >
 cd [-L|[-P [-e]] [-@]] [dir]                                                readarray [-d delim] [-n count] [-O origin] [-s count] [-t] [-u fd] [-C >
 command [-pVv] command [arg ...]                                            readonly [-aAf] [name[=value] ...] or readonly -p
 compgen [-abcdefgjksuv] [-o option] [-A action] [-G globpat] [-W wordlist>  return [n]
 complete [-abcdefgjksuv] [-pr] [-DEI] [-o option] [-A action] [-G globpat>  select NAME [in WORDS ... ;] do COMMANDS; done
 compopt [-o|+o option] [-DEI] [name ...]                                    set [-abefhkmnptuvxBCHP] [-o option-name] [--] [arg ...]
 continue [n]                                                                shift [n]
 coproc [NAME] command [redirections]                                        shopt [-pqsu] [-o] [optname ...]
 declare [-aAfFgilnrtux] [-p] [name[=value] ...]                             source filename [arguments]
 dirs [-clpv] [+N] [-N]                                                      suspend [-f]
 disown [-h] [-ar] [jobspec ... | pid ...]                                   test [expr]
 echo [-neE] [arg ...]                                                       time [-p] pipeline
 enable [-a] [-dnps] [-f filename] [name ...]                                times
 eval [arg ...]                                                              trap [-lp] [[arg] signal_spec ...]
 exec [-cl] [-a name] [command [arguments ...]] [redirection ...]            true
 exit [n]                                                                    type [-afptP] name [name ...]
 export [-fn] [name[=value] ...] or export -p                                typeset [-aAfFgilnrtux] [-p] name[=value] ...
 false                                                                       ulimit [-SHabcdefiklmnpqrstuvxPT] [limit]
 fc [-e ename] [-lnr] [first] [last] or fc -s [pat=rep] [command]            umask [-p] [-S] [mode]
 fg [job_spec]                                                               unalias [-a] name [name ...]
 for NAME [in WORDS ... ] ; do COMMANDS; done                                unset [-f] [-v] [-n] [name ...]
 for (( exp1; exp2; exp3 )); do COMMANDS; done                               until COMMANDS; do COMMANDS; done
 function name { COMMANDS ; } or name () { COMMANDS ; }                      variables - Names and meanings of some shell variables
 getopts optstring name [arg]                                                wait [-fn] [id ...]
 hash [-lr] [-p pathname] [-dt] [name ...]                                   while COMMANDS; do COMMANDS; done
 help [-dms] [pattern ...]                                                   { COMMANDS ; }
tony@linuxubuntu:~/temp$ mkdir -p test/test1
tony@linuxubuntu:~/temp$ ls
passwd  test
tony@linuxubuntu:~/temp$ cd test
tony@linuxubuntu:~/temp/test$ ls al
ls: cannot access 'al': No such file or directory
tony@linuxubuntu:~/temp/test$ ls -al
total 12
drwxrwxr-x 3 tony tony 4096 Nov 21 02:02 .
drwxrwxr-x 3 tony tony 4096 Nov 21 02:02 ..
drwxrwxr-x 2 tony tony 4096 Nov 21 02:02 test1
tony@linuxubuntu:~/temp/test$ rmdir -p test1/
tony@linuxubuntu:~/temp/test$ cd ..
tony@linuxubuntu:~/temp$ ls -al
total 16
drwxrwxr-x 3 tony tony 4096 Nov 21 02:02 .
drwxr-xr-x 5 tony tony 4096 Nov 21 01:24 ..
-rw-r--r-- 1 tony tony 2128 Nov 21 01:25 passwd
drwxrwxr-x 2 tony tony 4096 Nov 21 02:03 test
tony@linuxubuntu:~/temp$ rmdir -p test
tony@linuxubuntu:~/temp$ ls -al
total 12
drwxrwxr-x 2 tony tony 4096 Nov 21 02:03 .
drwxr-xr-x 5 tony tony 4096 Nov 21 01:24 ..
-rw-r--r-- 1 tony tony 2128 Nov 21 01:25 passwd
tony@linuxubuntu:~/temp$ cat ls.txt
cat: ls.txt: No such file or directory
tony@linuxubuntu:~/temp$ touch Dockerfile
tony@linuxubuntu:~/temp$ ls
Dockerfile  passwd
tony@linuxubuntu:~/temp$ touch ls.txt
tony@linuxubuntu:~/temp$ ls
Dockerfile  ls.txt  passwd
tony@linuxubuntu:~/temp$ ls -al abc
ls: cannot access 'abc': No such file or directory
tony@linuxubuntu:~/temp$ ls -al abc 2 > err.txt
ls: cannot access 'abc': No such file or directory
ls: cannot access '2': No such file or directory
tony@linuxubuntu:~/temp$ ls -al abc 2> err.txt
tony@linuxubuntu:~/temp$ err.txt
err.txt: command not found
tony@linuxubuntu:~/temp$ ps
    PID TTY          TIME CMD
   1925 pts/0    00:00:00 bash
  12992 pts/0    00:00:00 ps
tony@linuxubuntu:~/temp$ ps -ef
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 00:29 ?        00:00:07 /sbin/init
root           2       0  0 00:29 ?        00:00:00 [kthreadd]
root           3       2  0 00:29 ?        00:00:00 [rcu_gp]
root           4       2  0 00:29 ?        00:00:00 [rcu_par_gp]
root           5       2  0 00:29 ?        00:00:00 [netns]
root           7       2  0 00:29 ?        00:00:00 [kworker/0:0H-events_highpri]
root           9       2  0 00:29 ?        00:00:00 [kworker/0:1H-events_highpri]
root          10       2  0 00:29 ?        00:00:00 [mm_percpu_wq]
root          11       2  0 00:29 ?        00:00:00 [rcu_tasks_rude_]
root          12       2  0 00:29 ?        00:00:00 [rcu_tasks_trace]
root          13       2  0 00:29 ?        00:00:00 [ksoftirqd/0]
root          14       2  0 00:29 ?        00:00:00 [rcu_sched]
root          15       2  0 00:29 ?        00:00:00 [migration/0]
root          17       2  0 00:29 ?        00:00:00 [cpuhp/0]
root          18       2  0 00:29 ?        00:00:00 [cpuhp/1]
root          19       2  0 00:29 ?        00:00:00 [migration/1]
root          20       2  0 00:29 ?        00:00:00 [ksoftirqd/1]
root          22       2  0 00:29 ?        00:00:00 [kworker/1:0H-events_highpri]
root          23       2  0 00:29 ?        00:00:00 [kworker/1:1H]
root          24       2  0 00:29 ?        00:00:00 [kdevtmpfs]
root          25       2  0 00:29 ?        00:00:00 [inet_frag_wq]
root          26       2  0 00:29 ?        00:00:00 [kauditd]
root          27       2  0 00:29 ?        00:00:00 [khungtaskd]
root          28       2  0 00:29 ?        00:00:00 [oom_reaper]
root          29       2  0 00:29 ?        00:00:00 [writeback]
root          30       2  0 00:29 ?        00:00:00 [kcompactd0]
root          31       2  0 00:29 ?        00:00:00 [ksmd]
root          32       2  0 00:29 ?        00:00:00 [khugepaged]
root          79       2  0 00:29 ?        00:00:00 [kintegrityd]
root          80       2  0 00:29 ?        00:00:00 [kblockd]
root          81       2  0 00:29 ?        00:00:00 [blkcg_punt_bio]
root          82       2  0 00:29 ?        00:00:00 [tpm_dev_wq]
root          83       2  0 00:29 ?        00:00:00 [ata_sff]
root          84       2  0 00:29 ?        00:00:00 [md]
root          85       2  0 00:29 ?        00:00:00 [edac-poller]
root          86       2  0 00:29 ?        00:00:00 [hv_vmbus_con]
root          87       2  0 00:29 ?        00:00:00 [hv_pri_chan]
root          88       2  0 00:29 ?        00:00:00 [hv_sub_chan]
root          89       2  0 00:29 ?        00:00:00 [devfreq_wq]
root          90       2  0 00:29 ?        00:00:00 [watchdogd]
root          93       2  0 00:29 ?        00:00:00 [kswapd0]
root          94       2  0 00:29 ?        00:00:00 [ecryptfs-kthrea]
root          96       2  0 00:29 ?        00:00:00 [kthrotld]
root          97       2  0 00:29 ?        00:00:00 [nfit]
root          98       2  0 00:29 ?        00:00:00 [nvme-wq]
root          99       2  0 00:29 ?        00:00:00 [scsi_eh_0]
root         101       2  0 00:29 ?        00:00:00 [scsi_eh_1]
root         102       2  0 00:29 ?        00:00:00 [scsi_tmf_0]
root         103       2  0 00:29 ?        00:00:00 [nvme-reset-wq]
root         104       2  0 00:29 ?        00:00:00 [scsi_tmf_1]
root         105       2  0 00:29 ?        00:00:00 [nvme-delete-wq]
root         106       2  0 00:29 ?        00:00:00 [vfio-irqfd-clea]
root         109       2  0 00:29 ?        00:00:00 [mld]
root         110       2  0 00:29 ?        00:00:00 [ipv6_addrconf]
root         114       2  0 00:29 ?        00:00:00 [hv_balloon]
root         121       2  0 00:29 ?        00:00:00 [kstrp]
root         124       2  0 00:29 ?        00:00:00 [zswap-shrink]
root         125       2  0 00:29 ?        00:00:00 [kworker/u5:0]
root         132       2  0 00:29 ?        00:00:00 [jbd2/sda1-8]
root         133       2  0 00:29 ?        00:00:00 [ext4-rsv-conver]
root         176       1  0 00:29 ?        00:00:02 /lib/systemd/systemd-journald
root         213       1  0 00:29 ?        00:00:00 /lib/systemd/systemd-udevd
root         234       2  0 00:29 ?        00:00:00 [cryptd]
root         255       1  0 00:29 ?        00:00:02 /usr/lib/linux-tools/5.15.0-1023-azure/hv_kvp_daemon -n
root         418       2  0 00:29 ?        00:00:00 [kaluad]
root         419       2  0 00:29 ?        00:00:00 [kmpath_rdacd]
root         420       2  0 00:29 ?        00:00:00 [kmpathd]
root         421       2  0 00:29 ?        00:00:00 [kmpath_handlerd]
root         422       1  0 00:29 ?        00:00:00 /sbin/multipathd -d -s
systemd+     557       1  0 00:29 ?        00:00:00 /lib/systemd/systemd-networkd
root         558       2  0 00:29 ?        00:00:01 [kworker/0:4-events]
systemd+     560       1  0 00:29 ?        00:00:00 /lib/systemd/systemd-resolved
root         696       2  0 00:29 ?        00:00:00 [jbd2/sdb1-8]
root         697       2  0 00:29 ?        00:00:00 [ext4-rsv-conver]
root         756       1  0 00:29 ?        00:00:00 /usr/lib/accountsservice/accounts-daemon
root         760       1  0 00:29 ?        00:00:00 /usr/sbin/cron -f
message+     763       1  0 00:29 ?        00:00:00 /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-o
root         767       1  0 00:29 ?        00:00:00 /usr/sbin/irqbalance --foreground
root         769       1  0 00:29 ?        00:00:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root         774       1  0 00:29 ?        00:00:00 /usr/lib/policykit-1/polkitd --no-debug
_chrony      781       1  0 00:29 ?        00:00:01 /usr/sbin/chronyd -F -1
_chrony      789     781  0 00:29 ?        00:00:00 /usr/sbin/chronyd -F -1
root         790       1  0 00:29 ?        00:00:00 /usr/lib/snapd/snapd
root         792       1  0 00:29 ?        00:00:00 /lib/systemd/systemd-logind
root         796       1  0 00:29 ?        00:00:00 /usr/lib/udisks2/udisksd
root         797       1  0 00:29 ?        00:00:00 /usr/bin/python3 -u /usr/sbin/waagent -daemon
daemon       798       1  0 00:29 ?        00:00:00 /usr/sbin/atd -f
root         815       1  0 00:29 ?        00:00:00 /usr/sbin/ModemManager
root         818       1  0 00:29 ttyS0    00:00:00 /sbin/agetty -o -p -- \u --keep-baud 115200,38400,9600 ttyS0 vt220
root         828       1  0 00:29 ?        00:00:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         852       1  0 00:29 tty1     00:00:00 /sbin/agetty -o -p -- \u --noclear tty1 linux
root         998       2  0 00:29 ?        00:00:00 bpfilter_umh
root        1123     797  0 00:29 ?        00:00:07 python3 -u bin/WALinuxAgent-2.8.0.11-py2.7.egg -run-exthandlers
root        1592       1  0 00:29 ?        00:00:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
tony        1636       1  0 00:33 ?        00:00:00 /lib/systemd/systemd --user
tony        1637    1636  0 00:33 ?        00:00:00 (sd-pam)
root        1852    1592  0 00:53 ?        00:00:00 sshd: tony [priv]
tony        1924    1852  0 00:53 ?        00:00:00 sshd: tony@pts/0
tony        1925    1924  0 00:53 pts/0    00:00:00 -bash
root        3093       1  0 01:00 ?        00:00:00 /opt/omi/bin/omiserver -d
omi         3094    3093  0 01:00 ?        00:00:00 /opt/omi/bin/omiengine -d --logfilefd 3 --socketpair 9
syslog      3358       1  0 01:00 ?        00:00:00 /usr/sbin/rsyslogd -n -iNONE
omsagent    3484    3093  0 01:00 ?        00:00:00 /opt/omi/bin/omiagent 9 10 --destdir / --providerdir /opt/omi/lib --loglevel WARNING
root        3553    3093  0 01:00 ?        00:00:03 /opt/omi/bin/omiagent 9 10 --destdir / --providerdir /opt/omi/lib --loglevel WARNING
root        3624       1  0 01:00 ?        00:00:00 python3 /var/lib/waagent/Microsoft.EnterpriseCloud.Monitoring.OmsAgentForLinux-1.14.20/omsagent.py -t
omsagent    4178       1  0 01:07 ?        00:00:09 /opt/microsoft/omsagent/ruby/bin/ruby /opt/microsoft/omsagent/bin/omsagent -d /var/opt/microsoft/omsa
root        4312       1  0 01:07 ?        00:00:19 /opt/microsoft/auoms/bin/auoms
root        4425       2  0 01:07 ?        00:00:00 [audit_prune_tre]
root        5260       2  0 01:13 ?        00:00:00 [kworker/1:0-rcu_gp]
root        6390       1  0 01:14 ?        00:00:00 /sbin/auditd
root        6392    6390  0 01:14 ?        00:00:00 /sbin/audispd
root        6394    6392  0 01:14 ?        00:00:07 /opt/microsoft/auoms/bin/auomscollect
root        6684       1  0 01:14 ?        00:00:07 /opt/microsoft/mdatp/sbin/wdavdaemon
root        6708    6684  0 01:14 ?        00:00:05 /opt/microsoft/mdatp/sbin/wdavdaemon edr 10 9 --log_level info
root        7004    6392  0 01:14 ?        00:00:00 /opt/microsoft/mdatp/sbin/mdatp_audisp_plugin
root        7230    6708  0 01:14 ?        00:00:01 /opt/microsoft/mdatp/sbin/telemetryd_v2 33"
mdatp       7295    6684  0 01:14 ?        00:00:02 /opt/microsoft/mdatp/sbin/wdavdaemon unprivileged 66 69 74 76 65 --log_level info
root        8092       2  0 01:19 ?        00:00:00 [kworker/1:2-cgroup_destroy]
root       11187       2  0 02:04 ?        00:00:00 [kworker/u4:1-events_unbound]
root       12278       2  0 02:12 ?        00:00:00 [kworker/0:0-cgroup_destroy]
root       12353       2  0 02:13 ?        00:00:00 [kworker/u4:2-events_unbound]
root       12646       2  0 02:18 ?        00:00:00 [kworker/u4:0-events_unbound]
tony       13036    1925  0 02:23 pts/0    00:00:00 ps -ef
tony@linuxubuntu:~/temp$ sleep 50 &
[1] 13262
tony@linuxubuntu:~/temp$ jobs
[1]+  Running                 sleep 50 &
tony@linuxubuntu:~/temp$ jobs
[1]+  Done                    sleep 50
tony@linuxubuntu:~/temp$ cd ~
tony@linuxubuntu:~$ lsblk -o NAME,HCTL,SIZE,MOUNTPOINT | grep -i "sd"
sda     0:0:0:0      30G
├─sda1             29.9G /
├─sda14               4M
└─sda15             106M /boot/efi
sdb     0:0:0:1       8G
└─sdb1                8G /mnt
sdc     1:0:0:0      32G
tony@linuxubuntu:~$ sudo parted /dev/sdc --script mklabel gpt mkpart xfspart xfs 0% 100%
tony@linuxubuntu:~$ sudo mkfs.xfs /dev/sdc1
meta-data=/dev/sdc1              isize=512    agcount=4, agsize=2097024 blks
         =                       sectsz=4096  attr=2, projid32bit=1
         =                       crc=1        finobt=1, sparse=1, rmapbt=0
         =                       reflink=1
data     =                       bsize=4096   blocks=8388096, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0, ftype=1
log      =internal log           bsize=4096   blocks=4095, version=2
         =                       sectsz=4096  sunit=1 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
tony@linuxubuntu:~$ sudo partprobe /dev/sdc1
tony@linuxubuntu:~$ sudo mkdir /datadrive
tony@linuxubuntu:~$ sudo mount /dev/sdc1 /datadrive
tony@linuxubuntu:~$ mount
/dev/sda1 on / type ext4 (rw,relatime,discard)
devtmpfs on /dev type devtmpfs (rw,relatime,size=2005264k,nr_inodes=501316,mode=755,inode64)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,inode64)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,size=401952k,mode=755,inode64)
tmpfs on /run/lock type tmpfs (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755,inode64)
cgroup2 on /sys/fs/cgroup/unified type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
efivarfs on /sys/firmware/efi/efivars type efivarfs (rw,nosuid,nodev,noexec,relatime)
bpf on /sys/fs/bpf type bpf (rw,nosuid,nodev,noexec,relatime,mode=700)
cgroup on /sys/fs/cgroup/net_cls,net_prio type cgroup (rw,nosuid,nodev,noexec,relatime,net_cls,net_prio)
cgroup on /sys/fs/cgroup/pids type cgroup (rw,nosuid,nodev,noexec,relatime,pids)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpu,cpuacct)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb)
cgroup on /sys/fs/cgroup/rdma type cgroup (rw,nosuid,nodev,noexec,relatime,rdma)
cgroup on /sys/fs/cgroup/misc type cgroup (rw,nosuid,nodev,noexec,relatime,misc)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=28,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=12655)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,pagesize=2M)
mqueue on /dev/mqueue type mqueue (rw,nosuid,nodev,noexec,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
tracefs on /sys/kernel/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
fusectl on /sys/fs/fuse/connections type fusectl (rw,nosuid,nodev,noexec,relatime)
configfs on /sys/kernel/config type configfs (rw,nosuid,nodev,noexec,relatime)
binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,nosuid,nodev,noexec,relatime)
/var/lib/snapd/snaps/core20_1695.snap on /snap/core20/1695 type squashfs (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/snapd_17336.snap on /snap/snapd/17336 type squashfs (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/lxd_22753.snap on /snap/lxd/22753 type squashfs (ro,nodev,relatime,errors=continue,x-gdu.hide)
/dev/sda15 on /boot/efi type vfat (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
/dev/sdb1 on /mnt type ext4 (rw,relatime,x-systemd.requires=cloud-init.service,_netdev)
tmpfs on /run/snapd/ns type tmpfs (rw,nosuid,nodev,size=401952k,mode=755,inode64)
nsfs on /run/snapd/ns/lxd.mnt type nsfs (rw)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=401952k,mode=700,uid=1000,gid=1000,inode64)
tracefs on /sys/kernel/debug/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
/dev/sdc1 on /datadrive type xfs (rw,relatime,attr2,inode64,logbufs=8,logbsize=32k,noquota)
tony@linuxubuntu:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        29G  2.6G   27G   9% /
devtmpfs        2.0G     0  2.0G   0% /dev
tmpfs           2.0G     0  2.0G   0% /dev/shm
tmpfs           393M  984K  392M   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
/dev/loop0       64M   64M     0 100% /snap/core20/1695
/dev/loop1       48M   48M     0 100% /snap/snapd/17336
/dev/loop2       68M   68M     0 100% /snap/lxd/22753
/dev/sda15      105M  5.2M  100M   5% /boot/efi
/dev/sdb1       7.8G   28K  7.4G   1% /mnt
tmpfs           393M     0  393M   0% /run/user/1000
/dev/sdc1        32G  261M   32G   1% /datadrive
tony@linuxubuntu:~$ cd temp/
tony@linuxubuntu:~/temp$ ls -al
total 16
drwxrwxr-x 2 tony tony 4096 Nov 21 02:22 .
drwxr-xr-x 5 tony tony 4096 Nov 21 02:44 ..
-rw-rw-r-- 1 tony tony    0 Nov 21 02:07 Dockerfile
-rw-rw-r-- 1 tony tony   51 Nov 21 02:22 err.txt
-rw-rw-r-- 1 tony tony    0 Nov 21 02:08 ls.txt
-rw-r--r-- 1 tony tony 2128 Nov 21 01:25 passwd
tony@linuxubuntu:~/temp$ vi linuxcmd.txt
tony@linuxubuntu:~/temp$ cat linuxcmd.txt
젠료쿠데에 쇼오오넨닷타~
세카이와 이쿠와리 나네~
간밧따 ㅇ코노 호뭇센
tony@linuxubuntu:~/temp$
