#!/bin/bash

# Name: listenProcess.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  Script to listen process in background
# Usage: . listenProcess.sh <process>
clear

TIMESLEEP=5

if [ $# -eq 0 ]
then 
    echo "listen script with argument be like:"
    echo ". listenProcess.sh <process>"
    return
fi

while true #infinyte loop
do 
    # dev/null like a black hole HAHA
    if ps axu |grep $1 |grep -v grep |grep -v $0 > /dev/null
    then 
        echo "The process $1 is running!"
        sleep $TIMESLEEP
    else
        echo "The process $1 not running!"
        sleep $TIMESLEEP
    fi
done
