#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later
set -euo pipefail
#set -x
#set -x 将在命令执行前打印出命令 方便调试



sudo rsync -ahvP  vps:/var/cache/pacman/pkg/     /var/cache/pacman/pkg/ 
sudo rsync -ahvP  vps:/home/li/.cache/yay/ 		/home/li/.cache/yay/















