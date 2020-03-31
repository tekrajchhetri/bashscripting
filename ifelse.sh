#!/bin/bash
#simple if else script

echo "Enter a number between 1 and 3"
read VALUE

if [ "$VALUE" -eq "1" ] 2>/dev/null || [ "$VALUE" -eq "2" ] 2>/dev/null;then
   echo "You entered $VALUE"
elif [ "$VALUE" -eq "3" ] 2>/dev/null;then
  echo "Entered 3"
else
   echo "No instruction followed"
fi
