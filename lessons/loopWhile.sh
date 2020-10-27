#!/bin/bash

# Name: loopWhile.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script to learn cases whith use loop while
# Usage: . loopWhile.sh

clear 
read -p "Input the process limit: " MAXPROCESS

# count and list how many process running
while [ $(ps axu|wc -l) -le $MAXPROCESS ] 
do 
    echo "OK"
    echo "Current process: $(ps axu|wc -l)"
    sleep 3
    echo
done

echo "Process limit exceded, check your system"
