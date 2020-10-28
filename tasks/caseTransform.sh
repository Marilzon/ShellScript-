#!/bin/bash

# Name: caseTransform.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: transform input to UPPERCASE and LOWERCASE
# Usage: . caseTransform.sh
clear 

toUppercase () {
    echo "UPPERCASE"
    echo \-\>$1
    echo \-\>$1 | tr a-z A-Z
}

toLowercase () {
    echo "LOWERCASE"
    echo \-\>$1
    echo \-\>$1 | tr A-Z a-z
}
read -p "Input you string to transform: " inputText

toUppercase $inputText
echo
toLowercase $inputText
