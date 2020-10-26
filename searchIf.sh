#!/bin/bash

# searchIf.sh - condition to find name in the names.txt
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Created At: 26/10/2020
# Description: Script to practise the IF queryes name in the names.txt
# Usage: . searchIf.sh

RESPONSE="names.txt"

clear

if [ $# -gt 0 ]
then 
    FULLNAME=$(grep "$1" "$RESPONSE")
    echo "The full name query is: "$FULLNAME""
else 
    echo "List the name as parameter!"
fi
echo 
echo "End of Script"