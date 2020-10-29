#!/bin/bash

# Name: howTologger.sh
# Author: Marilzon de SOusa (maxmaril@hotmail.com)
# Description: Script to learn how to use and return logger comand
# Usage: from bash: . howTolog.sh 

DATETIME=$(date +%H:%M)
LISTNAMES="./names.txt"

# $0 = name of script
clear
echo
echo "Script start: " | logger -p local0.warn -t [$0]
logger -p local0.warn -t [$0] "Starting of Script"
echo "The script is running!"
echo
echo "Return: "
sort $LISTNAMES
echo
echo "END OF SCRIPT $DATETIME"
logger -p local0.warn -t [$0] "Ending of Script"
echo