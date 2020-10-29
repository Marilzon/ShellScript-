#!bin/bash/

# Name: debigMode.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script to execute bash in  debug mode
# Usage: . debugMode.sh
clear
trap read DEBUG # Start debug line to line

echo "Hello developer!"
read -p "Whats your name? " NAME 
echo
echo "Welcome $NAME, have a nice code!"

echo "End"

set +xv # Leave debug mode