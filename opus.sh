#!/bin/sh
OIFS="$IFS"
IFS=$(\s\S)
for i in *.flac
    do ffmpeg -i $i -acodec libopus -b:a 128000 $i.opus
done
dir=${PWD##*/}
mkdir "$dir"
for o in *.opus
    do mv $o "$dir"/
done
IFS=$SAVEIFS
