#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


rsync -avhPAX /etc/environment $host:/etc/
rsync -avhPAX /etc/profile $host:/etc/
rsync -avhPAX /etc/ssh/ssh*config  $host:/etc/ssh/
rsync -avhPAX /etc/pacman.conf  $host:/etc/
rsync -avhPAX /etc/pacman.d/   $host:/etc/pacman.d/
sudo rsync -avhPAX /etc/sudoers  $host:/etc/

echo /etc/environment    /etc/profile  /etc/ssh/ssh*config  /etc/sudoers















