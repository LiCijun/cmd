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

ssh $host mkdir /home/li/.ssh 
ssh $host <<filecmdflag
cp /root/.ssh/authorized_keys   /home/li/.ssh/
chown -R  li: /home/li/.ssh 
chmod -R 700 /home/li/.ssh 
chmod 600 /home/li/.ssh/authorized_keys 
filecmdflag














