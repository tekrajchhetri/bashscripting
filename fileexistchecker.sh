#!/bin/bash
echo "checking if file exist: a.txt"
FILE=$1
if [ -a $FILE ] 
then
    echo "$FILE exist"
fi
