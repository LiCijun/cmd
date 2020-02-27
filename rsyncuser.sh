#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
#rsync -av ~/.bash_login $host:~/
rsync -av ~/.profile $host:~/
rsync -av ~/.bash_profile $host:~/
rsync -av ~/.bashrc $host:~/
rsync -av ~/.nanorc $host:~/
rsync -av ~/.gitconfig $host:~/
rsync -av ~/.xprofile $host:~/
rsync -av ~/.config/fish/  $host:~/.config/fish/



