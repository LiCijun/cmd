#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later
set -euo pipefail
#set -x
#set -x 将在命令执行前打印出命令 方便调试


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














