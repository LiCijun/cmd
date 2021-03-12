#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


rsync -avhPAX --delete  CentosRepo/ $host:/etc/yum.repos.d/
















