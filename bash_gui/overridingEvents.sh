#!/bin/bash

TEMPFILE="tempfile.txt"
TEMPFILE2="tempfile2.txt"

trap "funExit" EXIT

funExit(){
	echo "Exit Intercepted"
	echo "Cleaning Tempfile"
	rm -rf tempfil*.txt
	exit 255
}

echo "Write something to tmp file for later use..." > $TEMPFILE
echo "Write something to tmp file 2 for later user..." > $TEMPFILE2

echo "Trying to copy the indicated file before processing..."
cp -rf $1 newfile.txt 2>/dev/null

if [ "$?" -eq "0" ]; then
 echo "Everything worked out ok..."
else
 echo "I guess it did not work out ok..."
 exit 1
fi