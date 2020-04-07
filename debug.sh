#!/bin/bash

echo "Enter file name"

#DEBUG STARTS
set -x

read FILE

while read -r  FILECONTENT; do
	echo "Content: $FILECONTENT"
done < "$FILE"

set +x
# STOP DEBUG
