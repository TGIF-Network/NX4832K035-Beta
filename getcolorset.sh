#!/bin/bash
############################################################
#  Get Color Info from /usr/local/etc/Colors.ini           #
#                                                          #
#  Returns a Binary Coded Value                            #
#                                                          #
#  VE3RD                                      2024-04-17   #
############################################################
set -o errexit
set -o pipefail
if [ -z "$2" ]; then
	SetNum="$1"
else
   SetNum=$(sed -n '/^[ \t]*\['"$2"'\]/,/\[/s/^[ \t]*SetNum[ \t]*=[ \t]*//p' /etc/Colors.ini)
fi;


m1=$(sed -n '/^[ \t]*\[ColorSet'"$SetNum"'\]/,/\[/s/^[ \t]*UpperBack[ \t]*=[ \t]*//p' /etc/Colors.ini)
m2=$(sed -n '/^[ \t]*\[ColorSet'"$SetNum"'\]/,/\[/s/^[ \t]*UpperText[ \t]*=[ \t]*//p' /etc/Colors.ini)
m3=$(sed -n '/^[ \t]*\[ColorSet'"$SetNum"'\]/,/\[/s/^[ \t]*LowerBack[ \t]*=[ \t]*//p' /etc/Colors.ini)
m4=$(sed -n '/^[ \t]*\[ColorSet'"$SetNum"'\]/,/\[/s/^[ \t]*LowerText[ \t]*=[ \t]*//p' /etc/Colors.ini)
m5=$(sed -n '/^[ \t]*\[ColorSet'"$SetNum"'\]/,/\[/s/^[ \t]*Split[ \t]*=[ \t]*//p' /etc/Colors.ini)
#m5=$(sed -n '/^[ \t]*\[General\]/,/\[/s/^[ \t]*Split[ \t]*=[ \t]*//p' /etc/Colors.ini)
mt="$SetNum|$m5|$m1|$m2|$m3|$m4"
echo "$mt"
