#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
#rsync -av ~/.bash_login $host:~/
rsync -avPAX ~/.profile $host:~/
rsync -avPAX ~/.bash_profile $host:~/
rsync -avPAX ~/.bashrc $host:~/
rsync -avPAX ~/.nanorc $host:~/
rsync -avPAX ~/.gitconfig $host:~/
rsync -avPAX ~/.xprofile $host:~/
rsync -avPAX ~/.config/fish/  $host:~/.config/fish/



