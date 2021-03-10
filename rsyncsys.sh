#! /bin/bash
#set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
sudo rsync -ahPAXv   /etc/conf.d/reflector.conf 							$host:/etc/conf.d/
rsync -ahPAXv  /etc/locale.conf 										$host:/etc/
rsync -ahPAXv /etc/security/limits.conf   								$host:/etc/security/
rsync -ahPAXv /etc/environment 											$host:/etc/
rsync -ahPAXv /etc/profile $host:/etc/
rsync -ahPAXv /etc/ssh/ssh*config  $host:/etc/ssh/
rsync -ahPAXv /etc/pacman.conf  $host:/etc/
rsync -ahPAXv  /etc/pacman.d/archlinuxcn-mirrorlist  $host:/etc/pacman.d/
sudo rsync -ahPAXv /etc/skel/.config/locale.conf   $host:/etc/skel/.config/
sudo rsync -ahPAXv /etc/pacman.d/   $host:/etc/pacman.d/
sudo rsync -ahPAXv /etc/sudoers  $host:/etc/
sudo rsync -ahPAXv /etc/xdg/reflector/  $host:/etc/xdg/reflector/




















