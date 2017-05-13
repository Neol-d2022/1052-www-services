#!/bin/bash
/sbin/ifconfig wlan0 down
/sbin/iwconfig wlan0 mode Monitor
/sbin/ifconfig wlan0 up
/root/Scripts/channelHopping.sh & /usr/bin/stdbuf -o0 /usr/bin/tshark -i wlan0 -I -Tfields -e wlan.ta -e radiotap.dbm_antsignal -e radiotap.channel.freq 2> /dev/null | /usr/bin/stdbuf -i0 -o0 /bin/grep -v "^\s\s$" | /usr/bin/stdbuf -i0 -o0 /bin/grep ":" | /var/www/mac2file /var/www/mac /var/www/modifying /var/www/tmp 256 300 w /var/www/oui.txt
