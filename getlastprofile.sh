#!/bin/bash
############################################################
#  Get  Profile from profiles.txt                          #
#  Returns a multi string | Separated                      #
#                                                          #
#                                                          #
#  VE3RD                                     2024-08-03    #
############################################################
set -o errexit
set -o pipefail
ver="20200512"
dirn=/etc/profiles.txt
declare -i pnum

	pnum=$(sed -nr "/^\[LastProfile\]/ { :l /^LPNum[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)

		#pnum=$(echo $1 | sed 's/^0*//')
		#pnum="$1"


		m1=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Name[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)


		m2=$(sed -nr "/^\[Profile $pnum\]/ { :l /^RXOffset[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m3=$(sed -nr "/^\[Profile $pnum\]/ { :l /^TXOffset[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m4=$(sed -nr "/^\[Profile $pnum\]/ { :l /^RXFrequency[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m5=$(sed -nr "/^\[Profile $pnum\]/ { :l /^TXFrequency[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m6=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Callsign[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m7=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Id[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m8=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Mode[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m9=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Address[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m10=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Port[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m11=$(sed -nr "/^\[Profile $pnum\]/ { :l /^Password[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m12=$(sed -nr "/^\[Profile $pnum\]/ { :l /^TalkGroup[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)
		m13=$(sed -nr "/^\[Profile $pnum\]/ { :l /^StartupDstId[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" $dirn)

               	mt="$pnum|$m1|$m2|$m3|$m4|$m5|$m6|$m7|$m8|$m9|$m10|$m11|$m12|$m13"
		echo "$mt"

