#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later
set -uo pipefail
#set -x
#set -x 将在命令执行前打印出命令 方便调试




echo cmd esxi key
scp ~/.acme.sh/aihlp.com/aihlp.com.key  cmdesxi:/etc/vmware/ssl/rui.key
scp ~/.acme.sh/aihlp.com/aihlp.com.cer  cmdesxi:/etc/vmware/ssl/rui.crt
ssh cmdesxi '/etc/init.d/hostd restart'
ssh cmdesxi '/etc/init.d/vpxa restart' 
echo 
echo li esxi key 
scp ~/.acme.sh/aihlp.com/aihlp.com.key  esxi:/etc/vmware/ssl/rui.key
scp ~/.acme.sh/aihlp.com/aihlp.com.cer  esxi:/etc/vmware/ssl/rui.crt
ssh esxi '/etc/init.d/hostd restart'
ssh esxi '/etc/init.d/vpxa restart' 

echo
echo aihlp plex
rsync -avPh ~/.acme.sh/aihlp.com/aihlp.com.pfx  root@aihlp:'/var/lib/plex/Plex Media Server/'
rsync -avPh ~/.acme.sh/aihlp.com/aihlp.com.pfx  root@aihlp:/etc/ssl/private/
ssh root@aihlp chown plex: '"/etc/ssl/private/aihlp.com.pfx"'


#echo 
#echo nas plex
#rsync -avPh .acme.sh/aihlp.com/aihlp.com.pfx  admin@172.18.1.2:'/share/CE_CACHEDEV1_DATA/etc/'
#ssh  admin@172.18.1.2 chmod 777 /share/CE_CACHEDEV1_DATA/etc/aihlp.com.pfx


echo 
echo cmdsz key 
scp ~/.acme.sh/cmd.aihlp.com/cmd.aihlp.com.key  root@cmdsz:/etc/httpd/conf/server.key
scp ~/.acme.sh/cmd.aihlp.com/cmd.aihlp.com.cer  root@cmdsz:/etc/httpd/conf/server.crt
ssh root@cmdsz 'systemctl restart httpd'


echo
echo vps.aihlp.com
rsync -avPh ~/.acme.sh/vps.aihlp.com/vps.aihlp.com.key  root@vps:/etc/nginx/
rsync -avPh ~/.acme.sh/vps.aihlp.com/vps.aihlp.com.cer  root@vps:/etc/nginx/
#ssh root@aihlp chown plex: '"/var/lib/plex/Plex Media Server/aihlp.com.pfx"'

