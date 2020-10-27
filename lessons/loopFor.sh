#!/bin/bash

# Name: loopFor.sh
# Author: Marilzon de Sousa(maxmaril@hotmail.com)
# Description: Script to learn cases whith use loop for
# Usage: . loopFor.sh

echo "for using condition increment"
for ((i=5;i<=10;i++))
do
    echo "The number is $i"    
done
#
echo
echo "for using seq function"
for value in $(seq 5 10)
do  
    echo "This value $value"    
done
echo
#
echo "for in each sequence positions"
for each in Marilzon Sousa Full Stack Developer
do 
    echo "-> $each"    
done
#
echo
echo "for using iterator scoped keys"
for iterator in {10..20}
do 
    echo "=> $iterator"    
done
#
echo
echo "for using iterator scoped keys with intervals defined"
for iterator in {10..20..2}
do 
    echo "=> $iterator"    
done
#
echo
echo "Files in this folder"
for lessons in * 
do
    echo "< $lessons >"    
done
