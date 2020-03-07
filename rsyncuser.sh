#! /bin/bash
set -e
if [ ! -n "$1" ] ;
then   
echo "请传入远程主机" ;
exit
fi
host=$1
#rsync -av ~/.bash_login $host:~/
rsync -avhP ~/.bashrc $host:~/
ssh $host echo  Start user at $host 
rsync -avhP ~/.profile $host:~/
rsync -avhP ~/.bash_profile $host:~/
rsync -avhP ~/.nanorc $host:~/
rsync -avhP ~/.gitconfig $host:~/
rsync -avhP ~/.xprofile $host:~/
rsync -avhP ~/.config/fish/  $host:~/.config/fish/



