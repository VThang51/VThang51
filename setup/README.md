# My Debian setup
0. Using USB as [Debian Mirrors](https://www.debian.org/mirror/list)
- Enter SuperUser mode:
```
user@debian:~# su -
Password:
root@debian:~#
```
> You can log in as `root` user right away or switch to tty2 using the `Ctrl + Alt + F2` key combination.
- Connect USB drive and check with 2 commands `lsusb` and `lsblk`
- Then run command:
```
mount /dev/sdX /media/cdrom
apt-cdrom -m add
```
> Knowing that `sdX` is your USB drive.

1. Install required packages
```
apt install network-manager curl wget
```

2. Use Network Manager to connect to the Internet
```
nmtui
```
- If you encounter errors while using internet services, try enabling he timesync feature.
```
apt install systemd-timesyncd
timedatectl set-ntp true
```

3. Download `sources.list`
```
curl -LSs https://github.com/VThang51/VThang51/raw/refs/heads/main/setup/utils.sh | bash -s sources.list
```

4. Setup Firefox repository and install
```
curl -LSs https://github.com/VThang51/VThang51/raw/refs/heads/main/setup/utils.sh | bash -s firefox
apt install firefox
```
 
