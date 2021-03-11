#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
/home/li/GitRepo/cmd/rsyncuser.sh  $host
/home/li/GitRepo/cmd/rsyncsys.sh  $host














