#!/bin/bash
echo "Enter file name"
read FILE
echo "Enter delimiter"
read DELIM

IFS="$DELIM"

while read -r CPU MEM DISK; do
 echo "CPU = $CPU"
 echo "MEMORY = $MEM"
 echo "DISK = $DISK" 
done < "$FILE"
