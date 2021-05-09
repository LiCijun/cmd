#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
#rsync -av ~/.bash_login $host:~/ no file
rsync -ah ~/.bashrc $host:~/
rsync -ah ~/.bash_logout $host:~/
rsync -ah ~/.profile $host:~/
rsync -ah ~/.bash_profile $host:~/
rsync -ah ~/.nanorc $host:~/
rsync -ah ~/.gitconfig $host:~/
rsync -ah ~/.xprofile $host:~/
rsync -ah ~/GitRepo/gitcmd  $host:~/GitRepo/ --exclude=.git
rsync -ah ~/GitRepo/cmd  $host:~/GitRepo/ --exclude=.git
ssh $host echo $host 
rsync -ah ~/.config/locale.conf   $host:~/.config/
rsync -ah ~/.config/fish/  $host:~/.config/fish/

