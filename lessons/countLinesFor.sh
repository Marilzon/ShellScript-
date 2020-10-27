#!/bin/bash

# Name: countLinesFor.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script to count the lines of files in this dir
# Usage: . countLinesFor.sh

for each in * # * = ALL IN THIS FOLDER
do
    if [ -f $each ]
    then
        echo "Listening file $each"
        LINE=$(cat $each | wc -l)
        echo "This file $each has $LINE lines."
        echo
    fi
done
