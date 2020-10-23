#!/bin/bash

# computerProps - script to list properties from computer

# Author: Marilzon de Sousa(maxmaril@hotmail.com)

# Usage from bash: . computerProps.sh

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo |grep "model name"|wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024) # Em MB
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear
echo 
echo "Computer name: $HOSTNAME"
echo "Date/Time: $(date)"
echo 
echo "Uptime Computer: $UPTIME"
echo
echo "Kernel Version: $KERNEL"
echo 
echo "CPUs:"
echo "CPUs/Core: $CPUNO"
echo "Architeture: $CPUMODEL"
echo 
echo "Total memory: $MEMTOTAL MB"
echo 
echo "DiskPart:"
echo "$FILESYS"
echo 











