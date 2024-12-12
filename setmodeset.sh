#!/bin/bash
############################################################
#   Set Mode Colors on Colors.ini                          #
#  						           #
#  						           #
#  VE3RD                                        2024-12-11 #
############################################################
set -o errexit
set -o pipefail
# Check all six modes and set each one to either 0 or 1

if [ -z "$3" ]; then
        exit
  else
sudo mount -o remount,rw /
SetNum="$1"
SP="$2"

UB="$3"
UT="$4"
LB="$5"
LT="$6"

if [ -z "$6" ]; then
	SP="1"
fi

sudo sed -i '/^\[/h;G;/Last/s/\(LastNum=\).*/\1'"$1"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/Last/s/\(LastSplit=\).*/\1'"$2"'/m;P;d'  /etc/Colors.ini

sudo sed -i '/^\[/h;G;/MMDVM/s/\(Set=\).*/\1'"$3"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/DMR/s/\(Set=\).*/\1'"$4"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/YSF/s/\(Set=\).*/\1'"$5"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/NXDN/s/\(Set=\).*/\1'"$6"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/P25/s/\(Set=\).*/\1'"$6"'/m;P;d'  /etc/Colors.ini
sudo sed -i '/^\[/h;G;/D-Star/s/\(Set=\).*/\1'"$7"'/m;P;d'  /etc/Colors.ini



sudo mount -o remount,ro /

fi;
