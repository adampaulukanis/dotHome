#!/bin/ksh

if [ -f /tmp/LISTA-BG.txt ] ; then
    print   lista exists
else
    print   start find indexing
    find /mnt/1TB/adam/Wspomnienia/ | egrep ".(png|jpg)" > /tmp/LISTA-BG.txt
    find $HOME/wallpapers/ | egrep ".(png|jpg)" >> /tmp/LISTA-BG.txt
    print   stop find indexing
fi

RANDOM_FILE=`cat /tmp/LISTA-BG.txt |sort -R |tail -1`

print   display this file $RANDOM_FILE

if [ -x /usr/local/bin/feh ] ; then
    feh --bg-max $RANDOM_FILE
fi

print $RANDOM_FILE > /tmp/wallpaperpath.txt
