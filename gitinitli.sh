#! /bin/bash
cd ~/
git init 
git remote add "li"  "li":liconfig.git
git remote add "vm"  "vm":liconfig.git
git remote add "lcj"  "lcj":liconfig.git
git remote add "dsm"  "dsm":liconfig.git
git remote add "dsmnfs"  "dsmnfs":liconfig.git
git add .bashrc
git add .vimrc
git add .profile
git add .bash_profile
git add .nanorc 
git add .gitconfig
git add .xprofile
git add .config/locale.conf
git add .config/fish/
git add .vnc/xstartup
git add .bash_logout

