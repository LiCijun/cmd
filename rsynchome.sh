#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later
set -euo pipefail
#set -x
#set -x 将在命令执行前打印出命令 方便调试



echo 操作系统备份
if [ ! -n "$1" ] ;
then   
echo "请传入备份路径" ;
exit
fi
host=$1
host=/home/li/nasDir/homebak/

if [ ! -n "$2" ] ;
then   
sudo rsync -ahAXvP --delete --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs","/.snapshots"}                           /home/  $host
else
oldPath=$2
sudo rsync -ahAXvP --delete --exclude={"/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*","/home/*/.gvfs","/.snapshots"}     --link-dest=$oldPath  /home/  $host
fi












