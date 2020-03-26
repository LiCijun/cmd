#! /bin/bash
set -e
echo 操作系统备份
$1=nas:/share/osbak/
if [ ! -n "$1" ] ;
then   
echo "请传入备份路径" ;
exit
fi
host=$1


if [ ! -n "$2" ] ;
then   
sudo rsync -ahAXvP --delete -e 'ssh' --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home",".snapshots","/home/li/nasDir/osbak",$host}  --exclude-from=rsyncexcludefile                         /  $host
else
oldPath=$2
sudo rsync -ahAXvP --delete -e  'ssh' --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home",".snapshots","/home/li/nasDir/osbak",$host}  --exclude-from=rsyncexcludefile   --link-dest=$oldPath  /  $host
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













