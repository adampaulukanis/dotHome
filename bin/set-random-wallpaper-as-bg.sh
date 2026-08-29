#!/bin/ksh

if [ ! -x /usr/local/bin/feh ] ; then
    exit 1
fi
if [ ! -x /usr/local/bin/convert ] ; then
    exit 1
fi

if [ ! -f /tmp/LISTA-BG.txt ] ; then
    print   start find indexing
    #find /mnt/1TB/adam/Wspomnienia/ | egrep ".(png|jpg)" > /tmp/LISTA-BG.txt
    find $HOME/wallpapers/ | egrep ".(png|jpg)" > /tmp/LISTA-BG.txt
    print   stop find indexing
fi

RANDOM_FILE=`cat /tmp/LISTA-BG.txt |sort -R |tail -1`

convert $RANDOM_FILE -auto-orient -bordercolor SkyBlue -border x50 /tmp/wallpaper.png

feh --bg-max /tmp/wallpaper.png
