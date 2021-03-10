#! /bin/bash
set -e
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












