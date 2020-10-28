#!/bin/bash

# howTolog.sh - Script for show simple strings sorted by asc
# Author: Marilzon de SOusa (maxmaril@hotmail.com)
# Description: Script to learn how to use and return log
# Usage: from bash: . howTolog.sh 

DATETIME=$(date +%H:%M)
LISTNAMES="./names.txt"

LOG="../logs/log.out"

exec 1>> $LOG

clear
echo
echo "Script start as $DATETIME"
echo "The script is running!"
echo
echo "Return: "
sort $LISTNAMES
echo
echo "END OF SCRIPT $DATETIME"
echo