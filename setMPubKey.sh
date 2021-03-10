#! /bin/bash

if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


ssh $host mkdir /home/m/.ssh
scp  /home/li/.ssh/netkeyPub/authorized_keys   $host:/home/m/.ssh/

ssh $host <<filecmdflag
chown -R  m: /home/m/.ssh 
chmod -R 700 /home/m/.ssh 
chmod 600 /home/m/.ssh/authorized_keys 
filecmdflag














