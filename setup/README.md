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
> Knowing that `sdX` is your USB drive.

1. Install required packages
```
root@debian:~# apt install network-manager curl wget
```

2. Backup and download `sources.list`
- Backup
```
root@debian:~# mv /etc/apt/sources.list /etc/apt/sources.list.bak
```
- Download
```
root@debian:~# curl https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/trixie.list | tee /etc/apt/sources.list > /dev/null
```

3. Setup Firefox repository and install
```
root@debian:~# curl https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/firefox.sh | bash
root@debian:~# apt update && apt install firefox
```
