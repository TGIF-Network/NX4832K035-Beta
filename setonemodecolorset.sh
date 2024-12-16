#!/bin/bash
############################################################
#   Set Single Mode Color                                  #
#  						           #
#  						           #
#  VE3RD                                       2024-04-17  #
############################################################
set -o errexit
set -o pipefail
# Check all six modes and set each one to either 0 or 1

if [ -z "$2" ]; then
        exit
  else
	sudo mount -o remount,rw /

sudo sed -i '/^\[/h;G;/'"$1"'/s/\(Set=\).*/\1'"$2"'/m;P;d'  /etc/Colors.ini



sudo mount -o remount,ro /

fi;
