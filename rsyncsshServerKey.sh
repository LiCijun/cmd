#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1

sudo rsync -avPAX /etc/ssh/ssh_host_*_key*  $host:/etc/ssh/













