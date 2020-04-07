#!/bin/bash
#change the directory and display the content

DIRECTORY=$1

cd $DIRECTORY 2>/dev/null #standard output to null

if [ "$?" = "0" ]; then
	echo "Change directory possible"
	echo "`ls -al`"
else
   echo "Cannot change directories, exiting"
   exit 1
fi

