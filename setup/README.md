# my setup (copy if u want)
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
mount /dev/sdX /media/cdrom
apt-cdrom -m add
```
> Knowing that `sdX` is your USB drive.

1. Install required packages
```
root@debian:~# apt install network-manager curl wget
```

2. Use Network Manager to connect Internet
```
nmtui
```
3. Download `sources.list`
```
curl -LSs https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/utils.sh | bash -s sources.list
```

4. Setup Firefox repository and install
```
curl -LSs https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/utils.sh | bash -s firefox
apt install firefox
```
