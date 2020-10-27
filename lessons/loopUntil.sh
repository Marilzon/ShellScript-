#!/bin/bash

# Name: loopUntil.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  Script to learn cases whith use loop Until
#               this loop stop runnint when loop return true (similar to async await )
# Usage: . loopUntil.sh

clear

until ps axu |grep firefox |grep -v grep > /dev/null
do 
    echo "Start the Firefox..."
    sleep 3
    echo 
done

echo "Firefox started"
echo "PID: $(pgrep firefox)" # echo the process id of firefox PIDgrep

