#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1

ssh $host  '/etc/init.d/hostd restart'
ssh $host  '/etc/init.d/vpxa restart'

