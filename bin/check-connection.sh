#!/bin/sh

set -e

doas -u root /sbin/ifconfig run0 down
sleep 1
doas -u root /sbin/ifconfig run0 up
sleep 1
doas -u root /bin/sh /etc/netstart run0
