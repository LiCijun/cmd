#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
scp ~/.bashrc $host:~/
scp ~/.nanorc $host:~/
scp ~/.gitconfig $host:~/
scp ~/.xprofile $host:~/
scp ~/.config/fish/config.fish $host:~/.config/fish/

#rsync -avP  ~/.config/fish/config.fish  $1:~/.config/fish/






#scp /etc/sudoers  $host:/etc/






