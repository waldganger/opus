#!/bin/sh
OIFS="$IFS" #évite que les espaces dans les boucles génèrent des erreurs
IFS=$(\s\S) #évite que les espaces dans les boucles génèrent des erreurs
for i in *.flac
    do ffmpeg -i $i -acodec libopus -b:a 128000 $i.opus
done
dir=${PWD##*/} #assigne le nom du répertoire à une variable
mkdir "$dir"
for o in *.opus
    do mv $o "$dir"/
done
IFS=$SAVEIFS #évite que les espaces dans les boucles génèrent des erreurs
