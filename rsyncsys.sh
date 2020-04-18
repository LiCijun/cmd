#! /bin/bash
#set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
sudo rsync -ahAX   /etc/conf.d/reflector.conf 							$host:/etc/conf.d/
rsync -ahAX  /etc/locale.conf 										$host:/etc/
rsync -ahAX /etc/security/limits.conf   								$host:/etc/security/
rsync -ahAX /etc/environment 											$host:/etc/
rsync -ahAX /etc/profile $host:/etc/
rsync -ahAX /etc/ssh/ssh*config  $host:/etc/ssh/
rsync -ahAX /etc/pacman.conf  $host:/etc/
rsync -ahAX  /etc/pacman.d/archlinuxcn-mirrorlist  $host:/etc/pacman.d/
sudo rsync -ahAX /etc/skel/.config/locale.conf   $host:/etc/skel/.config/
sudo rsync -ahAX /etc/pacman.d/   $host:/etc/pacman.d/
sudo rsync -ahAX /etc/sudoers  $host:/etc/


















