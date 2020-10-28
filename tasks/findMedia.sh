#!/bin/bash

# Name: findMedia.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  Script to find media .mp3 .mp4 .jpg in folder
# Usage: . findMedia.sh
clear

for user in /home/*
do 
    MP4COUNT=0
    MP3COUNT=0
    JPGCOUNT=0
    OLDIFS=$IFS
    IFS=$'\n'
    for files in $(find $user -name '*.jpg' -o -name '.mp4' -o -name '.mp3')
    do 
        case $files in 
            *.mp4)
                MP4COUNT=$(expr $MP4COUNT + 1)
                ;;
            *.mp3)
                MP3COUNT=$(expr $MP3COUNT + 1)
                ;;
            *.jpg)
                JPGCOUNT=$(expr $JPGCOUNT + 1)
                ;;
        esac
    done 

echo "User: $(basename $user)"
echo "Files JPG: $JPGCOUNT"
echo "Files MP3: $MP3COUNT"
echo "Files MP4: $MP4COUNT"
echo 
done

IFS=$OLDIFS