#!/bin/bash
####################################################################
#  Change TX ModeHang in /etc/mmdvmhost                            #
#                                                                  #
#  VE3RD                                               2024-12-15  #
####################################################################
set -o errexit
set -o pipefail

# Set value in $2 for Mode/Network
if [ -z "$5" ]; then
        exit
 else
	sudo mount -o remount,rw /
	sudo /usr/local/sbin/mmdvmhost.service stop  > /dev/null


	sudo sed -i '/^\[/h;G;/D-Star/s/\(TXHang=\).*/\1'"$1"'/m;P;d' /etc/mmdvmhost

	sudo sed -i '/^\[/h;G;/DMR/s/\(TXHang=\).*/\1'"$2"'/m;P;d' /etc/mmdvmhost

	sudo sed -i '/^\[/h;G;/System Fusion/s/\(TXHang=\).*/\1'"$3"'/m;P;d' /etc/mmdvmhost

	sudo sed -i '/^\[/h;G;/NXDN/s/\(TXHang=\).*/\1'"$4"'/m;P;d' /etc/mmdvmhost

	sudo sed -i '/^\[/h;G;/P25/s/\(TXHang=\).*/\1'"$5"'/m;P;d' /etc/mmdvmhost

	sudo sed -i '/^\[/h;G;/M17/s/\(TXHang=\).*/\1'"$6"'/m;P;d' /etc/mmdvmhost
	echo "Done"
fi;
sudo /usr/local/sbin/mmdvmhost.service start  > /dev/null
sudo mount -o remount,rw /
