#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later
set -euo pipefail
#set -x
#set -x 将在命令执行前打印出命令 方便调试



echo 操作系统备份
$1=admin@172.18.1.2:/share/CE_CACHEDEV1_DATA/archos/
#if [ ! -n "$1" ] ;
#then   
#echo "请传入备份路径" ;
#exit
#fi
host=$1


if [ ! -n "$2" ] ;
then   
	sudo rsync -ahAXvP --delete  --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home",".snapshots","/home/li/nasDir/",'@Recently-Snapshot','@Recycle'}     /   admin@172.18.1.2:/share/CE_CACHEDEV1_DATA/archos/
else
oldPath=$2
sudo rsync -ahAXvP --delete -e  'ssh' --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home",".snapshots","/home/li/nasDir/",$host,@Recently-Snapshot,@Recycle}   --link-dest=$oldPath  /  $host
fi


# Otherwise consider excluding unimportant subdirectories such as /home/*/.thumbnails/*, /home/*/.cache/mozilla/*, /home/*/.cache/chromium/*, and /home/*/.local/share/Trash/*, depending on software installed on the system.
# If GVFS is installed, /home/*/.gvfs must be excluded to prevent rsync errors.


#mkdir $host/run
#mkdir $host/dev
#mkdir $host/tmp
#mkdir $host/proc
#mkdir $host/mnt
#mkdir $host/sys
#mkdir $host/media













