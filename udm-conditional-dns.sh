#!/bin/sh

# https://durdle.com/2020/12/04/conditional-dns-udm-pro/
# place in /mnt/data/on_boot.d

cat > /run/dnsmasq.conf.d/conditional_dns.conf <<- "EOF"
# Created by a UDM-Utilities run script
server=/ad.knipal.com/10.55.10.100
server=/_msdcs.ad.knipal.com/10.55.10.100
server=/home.local/192.168.1.1
EOF
 
# Restart dnsmasq so it sees the new conf file
kill -9 `cat /run/dnsmasq.pid`
# Thanks Andreas Luebbers for the updated kill command.
# Old kill command: pkill dnsmasq