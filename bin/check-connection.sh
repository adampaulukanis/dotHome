#!/bin/sh

set -e

if ping -c1 wp.pl >/dev/null 2>/dev/null
then
    exit
else
    # ping not working, so there is a problem with network
    doas -u root /sbin/ifconfig run0 down
    sleep 1
    doas -u root /sbin/ifconfig run0 up
    sleep 1
    doas -u root /bin/sh /etc/netstart run0
fi
