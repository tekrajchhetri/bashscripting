#!/bin/bash
# this is example for for loop
clear
echo "Listing all the shell script content"

SHELLSCRIPT=`ls *.sh`
#echo $SHELLSCRIPT
for SCRIPT in "$SHELLSCRIPT"; do
   DISPLAY="`cat $SCRIPT`"
   echo "FILE- $SCRIPT Content - $DISPLAY"
done
