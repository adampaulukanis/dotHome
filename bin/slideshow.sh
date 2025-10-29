#!/bin/ksh

PROCESSPATH=$1

print The slideshow is paused now, press 'h' to unpause
print
print
sleep 3

print hello ${PROCESSPATH}
feh --draw-exif \
    --draw-filename \
    --fullscreen \
    --slideshow-delay -5 \
    ${PROCESSPATH}
