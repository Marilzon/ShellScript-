#!/bin/bash

#########################################################################
#									#
# searchName.sh - find name in the names.txt				#
#									#
# Author: Marilzon de Sousa(maxmaril@hotmail.com)			#
# Created At: 22/10/2020						#
#									#
# Description: 	Script for example to read command.			#
# 		from a user input, find the string in file names.txt	#
#									#
# Usage: ./searchNames.sh						#
#									#
#########################################################################

RESPONSE="names.txt"

clear
echo "=== Script to search names  ==="
echo ""
read -p "Please, input the name: " NAME

FULLNAME=$(grep "$NAME" $RESPONSE)

echo ""
echo "The name is: $FULLNAME"
echo ""
echo "End of Script"

