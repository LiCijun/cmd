@echo off
route -p add 10.128.0.1 mask 255.255.0.0 10.0.0.1
route -p add 192.168.18.18 mask 255.255.255.255 10.0.0.1

