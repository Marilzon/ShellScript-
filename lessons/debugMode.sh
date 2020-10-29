#!bin/bash/

# Name: debigMode.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script to show bash in mode debugger
# Usage: . debugMode.sh
clear
set -xv # use -x or -v or -xv, for variables cases
echo "Hello developer!"
read -p "Whats your name? " NAME 
echo
echo "Welcome $NAME, have a nice code!"
set +xv # +sv to close debug running