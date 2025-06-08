#!/bin/ksh

if [ -f /tmp/LISTA-BG.txt ] ; then
    print lista exists
else
    find /mnt/1TB/adam/Wspomnienia/ | grep \.jpg > /tmp/LISTA-BG.txt
    find /mnt/1TB/adam/Wspomnienia/ | grep \.png >> /tmp/LISTA-BG.txt
fi

RANDOM_FILE=`cat /tmp/LISTA-BG.txt |sort -R |tail -1`
tee $RANDOM_FILE > /tmp/wallpaperpath.txt

if [ -x /usr/local/bin/feh ] ; then
    feh --bg-max $RANDOM_FILE
fi
