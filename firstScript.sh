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
echo " "
echo "Show data and time now: "
date
echo "List of Names: "
echo " "
sort ../ShellScript-/names.txt
