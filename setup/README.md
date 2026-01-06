0. Using USB as [Debian Mirrors](https://www.debian.org/mirror/list)
- Enter SuperUser mode:
```
user@debian:~# su -
Password:
root@debian:~#
```
- Connect USB drive and check with 2 commands `lsusb` and `lsblk`
- Then run command:
```
root@debian:~# mount /dev/sdX /media/cdrom
root@debian:~# apt-cdrom -m add
```

1. Install required packages
```
root@debian:~# apt install network-manager curl wget
```

