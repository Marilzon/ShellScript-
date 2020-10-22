#!/bin/bash

#################################################################
#
# firstScript.sh - Script for show simple strings sorted by asc
#
# Author: Marilzon de SOusa (maxmaril@hotmail.com)
#
# Usage: from bash: . firstScript.sh 
#
#################################################################

DATETIME=$(date +%H:%M)
LISTNAMES="./names.txt"

clear

echo "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠛⣙⠛⠳⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣰⠋⣰⣿⠿⠿⢷⣦⡈⢻⡀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡎⢠⣦⠀⣴⣿⠃⠀⣶⣦⣤⣁⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⢀⡾⢀⣿⠃⢰⣿⣿⠀⠀⠙⠿⠿⣿⡧⢸⡇⠀Maril has been Ejected!⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⣼⠀⣼⡏⢀⣿⣿⣿⣷⣤⣀⣀⡀⠀⢀⡼⠃⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⢿⠐⠿⠀⣼⣿⣿⣿⣿⣿⣿⣿⡿⠀⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⢈⡷⠀⣶⣿⣿⠛⠿⣿⣿⣿⣿⠃⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⢸⡅⠸⢿⡿⢃⡄⢠⣤⣬⡿⢃⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⠤⠴⢿⣄⠻⠿⢋⣠⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⠶⠋⠀⠀⠀
    "
echo "My funny first Script"

echo "Show date and time now: $DATETIME"

echo "List of Names:"

sort $LISTNAMES
