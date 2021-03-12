#! /bin/bash

if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1


scp -r /home/li/yay  $host:/home/li/
ssh $host  " cd yay && makepkg -si "















