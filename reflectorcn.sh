#! /bin/bash
sudo reflector --verbose --latest 200000 -c CN  --age 24  --fastest  1000   --sort rate --save /etc/pacman.d/mirrorlist 

