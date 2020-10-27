#!/bin/bash

# Name: continue.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: example to usage from comand continue in the code
# Usage: . continue.sh
clear 

for name in $(cat names.txt)
do
    if [ $name = Marilzon ]
    then 
        echo "The user $name is frontend developer"
        continue
    fi
    echo "clients: $name"
done
