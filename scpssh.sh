#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
rsync	-avP	/etc/ssh/	$1:/tmp/ssh/
ssh $1 cp -r /tmp/ssh/* /etc/ssh/


rsync	-avP	/etc/ssh/	$1:/etc/ssh/



#scp /etc/sudoers  $host:/etc/






