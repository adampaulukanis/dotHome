#!/bin/sh

for f in *.ogg
do
    ffmpeg -i "$f" "${f%.*}.mp3"
done
