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

sudo rsync -avhPAX /etc/ssh/ssh_host_*_key*  $host:/etc/ssh/













