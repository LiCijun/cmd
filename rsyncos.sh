#! /bin/bash
set -e
echo 操作系统备份
if [ ! -n "$1" ] ;
then   
echo "请传入备份路径" ;
exit
fi
host=$1

if [ ! -n "$2" ] ;
then   
rsync -aAXvP --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} --exclude=$host --exclude-from=rsyncexcludefile                      /  $host
else
oldPath=$2
rsync -aAXvP --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} --exclude=$host --exclude-from=rsyncexcludefile   --link-dest=$oldPath /  $host
fi




#mkdir $host/run
#mkdir $host/dev
#mkdir $host/tmp
#mkdir $host/proc
#mkdir $host/mnt
#mkdir $host/sys
#mkdir $host/media













