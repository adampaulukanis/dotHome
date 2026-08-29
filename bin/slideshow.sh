#!/bin/ksh

PROCESSPATH=$1
DELAY=10

print The slideshow is paused now, press 'h' to unpause
print
print
print hello ${PROCESSPATH}, $DELAY seconds delay
sleep $DELAY

feh --draw-exif \
    --draw-filename \
    --fullscreen \
    --slideshow-delay -$DELAY \
    ${PROCESSPATH}
