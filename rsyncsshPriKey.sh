#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1

rsync   -avPAX   --exclude authorized_keys  --exclude known_hosts   ~/.ssh/ $host:~/.ssh/













