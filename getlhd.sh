#!/bin/bash
#################################################
#  Get Last Heard Liost from MMDVMHost Log	#
#						#
#						#
#  VE3RD 			2020-05-03	#
#################################################
set -o errexit
set -o pipefail
sudo mount -o remount,rw /

f1=$(ls -tr /var/log/pi-star/MMDVM* | tail -1 )
#list1=$(sudo sed -n '/received network end of voice transmission from/p' $f1 | sed 's/,//g' | tail -1)
list1=$(sudo sed -n '/received network end of voice transmission from/p' $f1 | tail -1)
#echo "$list1"
#exit

pl=$(echo "$list1" | cut -d " " -f20)
dur=$(echo "$list1" | cut -d " " -f18)

echo "$dur|$pl"
sudo mount -o remount,ro /
