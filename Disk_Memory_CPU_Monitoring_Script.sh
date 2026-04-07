#!/bin/bash


####################################
#
#
# Author :: Meghashyam Gher
#
# Date   :: 07-04-2026
#
# Script :: Monitoring Usages
#
# Version :: v1
#
#
# #################################


echo "################################# Checking Date....!! #################################"

echo "Date is : $(date)"

echo "################################# Checking Disk Usages ......!! #######################"

df -h

echo "################################# Checking Memory Usages ......!! ######################"

free -m

echo "################################# Checking CPU Load ......!! ############################"

top -bn1 | grep "load average"

sleep 1

echo "################################ !!........Checking Completed......!!######################"
