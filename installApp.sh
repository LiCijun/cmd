#! /bin/bash

if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


ssh  $host  << eeooff
yay --noconfirm -Syu
yay --noconfirm --needed -S base base-devel btrfs-progs networkmanager openssh dialog arch-install-scripts binutils sudo iw wpa_supplicant reflector fish grub efibootmgr os-prober aria2  vim git wget net-tools dnsutils inetutils iproute2   p7zip dosfstools snapper network-manager-applet  rsync axel nvme-cli go  grub-btrfs snap-pac snap-sync snapper nano  gitolite

eeooff
echo done!













