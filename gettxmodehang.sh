############################################################
#  Get TX eHang Mode from /etc/mmdvmhost                   #
#                                                          #
#                                                          #
#  VE3RD                                      2024-12-15   #
############################################################
#set -o errexit
#set -o pipefail
	m1=$(sed -nr "/^\[D-Star\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)

	m2=$(sed -nr "/^\[DMR\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)

	m3=$(sed -nr "/^\[System Fusion\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)

	m4=$(sed -nr "/^\[NXDN\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)

	m5=$(sed -nr "/^\[P25\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)

	m6=$(sed -nr "/^\[M17\]/ { :1 /^TXHang[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b 1;}" /etc/mmdvmhost)


mt="$m1|$m2|$m3|$m4|$m5|$m6"
echo "$mt"
