#!/bin/bash

# Name: menoCase.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: The script is a example of meno using CASE
# Usage: . menuCase.sh

echo "Choose the menu option:"
echo 
echo "1 - Insert"
echo "2 - Remove"
echo "3 - Update"
echo "4 - Exit"
echo 
read -p "Option: " option
echo 

# CASE condition 
case "$option" in 
    1)
        echo "Option 1."
        echo "Start the option insert..."
        sleep 3
        ;;
    2)
        echo "Option 2."
        echo "Start the option remove..."
        sleep 3
        ;;
    3)
        echo "Option 3."
        echo "Start the option update..."
        sleep 3
        ;;
    4)
        echo "Option 4."
        echo "quit..."
        sleep 3
        exit 2
        ;;
    *)
        echo "Invalid option"
        exit 2
        ;;
esac