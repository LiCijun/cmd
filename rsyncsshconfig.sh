#/! /bin/bash

scp -r /etc/ssh/* root@207.246.82.116:/etc/ssh/
exit
rsync	-avP	/etc/ssh/	root@207.246.82.116:/etc/ssh/

