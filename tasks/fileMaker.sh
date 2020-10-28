#!/bin/bash

# Name: fileMaker.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  Based an user input, the script create a file
# Usage: . fileMaker.sh
clear

read -p "Input the name of file do you make: " FILE
read -p "Input the content of file " CONTENT
read -p "Input the size final od file (bytes): " SIZE

cat /dev/null > $FILE 

STATUS=0

until [ $SIZE -le $(stat --printf=%s "$FILE") ]
do 
    echo -n $CONTENT >> $FILE
    SIZENOW=$(stat --printf=%s "$FILE")

    STATUSNOW=$(expr $SIZENOW \* 100 / $SIZE)

    if [ $(expr $STATUSNOW % 10) -eq 0 -a $STATUS -ne $STATUSNOW ]
    then 
        echo "Done: $STATUSNOW% - File size: $SIZENOW"
        STATUS=$STATUSNOW
    fi
done
