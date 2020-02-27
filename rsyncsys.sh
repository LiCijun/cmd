#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1

rsync -av /etc/bashrc $host:/etc/
rsync -av /etc/environment $host:/etc/
rsync -av /etc/profile $host:/etc/
rsync -av /etc/ssh/ssh*config  $host:/etc/ssh/
sudo rsync -av /etc/sudoers  $host:/etc/















