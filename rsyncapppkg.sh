#! /bin/bash
set -e
sudo rsync -ahvP  vps:/var/cache/pacman/pkg/     /var/cache/pacman/pkg/ 
sudo rsync -ahvP  vps:/home/li/.cache/yay/ 		/home/li/.cache/yay/















