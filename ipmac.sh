#! /bin/bash
name=$1
ip=$2
macPath=$3
arpPath=/etc/ethers
dhcpPath=/etc/dhcpd.conf
if [ -z "$name" ] ; then
   echo name is null 
   exit
fi
 VALID_CHECK=$( echo  $ip| awk  -F.  '$1<=255&&$2<=255&&$3<=255&&$4<=255{print "yes"}')
if  echo  $ip| grep  -E  "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" > /dev/null ;  then
    if  [ ${VALID_CHECK:-no} !=  "yes"  ];  then
            echo  "IP $ip not available!"
        exit
    fi
else
    echo  "IP format error!"
    exit
fi

echo "# $name" >> $arpPath
echo "$ip $macPath" >> $arpPath
echo  >> $arpPath
arp -f
echo "host $name{" >> $dhcpPath
echo "        hardware ethernet  $macPath;" >> $dhcpPath
echo "        fixed-address $ip;" >> $dhcpPath
echo "}"  >> $dhcpPath
echo  >> $dhcpPath

systemctl restart dhcpd4

