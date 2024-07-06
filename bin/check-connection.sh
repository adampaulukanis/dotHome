#!/bin/sh

set -e

doas -u root /sbin/ifconfig run0 down
doas -u root /bin/sh /etc/netstart run0
