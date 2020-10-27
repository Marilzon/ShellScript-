#!bin/bash

# Name: typeCase.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description:  This Script test if 
#               parameter is a type match a regex type defined
# Usage: . typeCase.sh <parameter>  *ONE CHARACTER in PARAMETER*

case "$1" in
    [0-9])
        echo "The parameter is a number"
        ;;
    [A-Z])
        echo "The parameter is a UPPERCASE string"
        ;;
    [a-z])
        echo "The parameter is a lowercase string"
        ;;
    *)
        echo "The parameter is a special character"
esac