#!/bin/bash

# Name: if.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script check for argument if user system has been exists
# Usage: . if.sh

USER=$(grep "$1" /etc/passwd)

if [ -n "$USER" ] # testing if variable USER not null > TRUE
then 
    echo "User exits"
else 
    echo "User not found"
fi