#!/bin/bash
############################################################
#  Get Mode Color Info from /usr/local/etc/Colors.ini      #
#                                                          #
#                                                          #
#  VE3RD                                      2024-08-01   #
############################################################
set -o errexit
set -o pipefail

m1=$(sed -n '/^[ \t]*\[MMDVM\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
m2=$(sed -n '/^[ \t]*\[DMR\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
m3=$(sed -n '/^[ \t]*\[YSF\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
m4=$(sed -n '/^[ \t]*\[P25\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
m5=$(sed -n '/^[ \t]*\[NXDN\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
m6=$(sed -n '/^[ \t]*\[DSTAR\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
mt="$m1|$m2|$m3|$m4|$m5|$m6"
echo "$mt"
