#!bin/bash

# Name: mathOperations.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  This script should be user input two numbers and choose
#               the math operations and return response
# Usage: . mathOperations.sh

read -p "Input value 1: " VALUE1
read -p "Input value 2: " VALUE2

if [ ! $VALUE1 ] || [ ! $VALUE2 ]
then 
    echo "null value is not allowed"
    return 
fi

echo
echo "Choose the operation:" 
echo "1 - sum"
echo "2 - subtraction"
echo "3 - multiplication"
echo "4 - division"
echo "0 - exit "
echo 
read -p "Option: " OPTION
echo 

case "$OPTION" in 
    1)
        OPERATION="+"
        ;;
    2)
        OPERATION="-"
        ;;
    3)
        if [ $VALUE1 -eq 0 -o $VALUE2 -eq 0 ]
        then 
            echo "value 0 is not allowed to multiplications"
            return 
        fi
        OPERATION="*"
        ;;
    4)
        if [ $VALUE1 -eq 0 -o $VALUE2 -eq 0 ]
        then 
            echo "value 0 is not allowed to division"
            return 
        fi
        if [ $(expr $VALUE1 % $VALUE2) -ne 0 ]
        then 
            echo "Division with rest = $(expre $VALUE1 % $VALUE2)"
        else
            echo "Exact division"
        fi
        echo
        OPERATION="/"
        ;;
    0)
        echo "return ..."
        return 
        ;;
    *)
        echo "Invalid option!"
        return 
        ;;
esac
echo "$VALUE1 $OPERATION $VALUE2 = $(expr $VALUE1 "$OPERATION" $VALUE2)"
