#!/bin/bash

# Name: break.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: example to usage from comand break in code
# Usage: . break.sh
clear 

for name in $(cat names.txt)
do
    if [ $name = Marilzon ]
    then 
        echo "The user $name is frontend developer"
        break
    fi
    echo "clients: $name"
done
