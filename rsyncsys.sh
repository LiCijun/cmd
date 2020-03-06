#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


rsync -avPAX /etc/environment $host:/etc/
rsync -avPAX /etc/profile $host:/etc/
rsync -avPAX /etc/ssh/ssh*config  $host:/etc/ssh/
sudo rsync -avPAX /etc/sudoers  $host:/etc/















