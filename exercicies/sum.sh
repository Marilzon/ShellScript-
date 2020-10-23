#!/bin/bash

#########################################################
#							#
# sum.sh - input Two numbers,sum and show result	#
#							#
# Author: Marilzon de Sousa(maxmaril@hotmail.com)	#
#							#
# Usage from bash: . sum.sh				#
#							#
#########################################################

read -p "Input the first NUMBER: " a
read -p "Input the second NUMBER: " b

echo "$(expr $a + $b)"

