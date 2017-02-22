#!/bin/bash
/usr/bin/stdbuf -o0 /usr/bin/tshark -i bluetooth0 -Tfields -e bthci_evt.bd_addr -e bthci_evt.rssi 2> /dev/null | /usr/bin/stdbuf -i0 -o0 /bin/grep -v "\s$" | /var/www/mac2file /var/www/bmac /var/www/bmodifying /var/www/btmp 256 60 b
