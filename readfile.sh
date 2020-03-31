#!/bin/bash
# file reading non-binary, display a line at a time

echo "File name to read"
read FILE

while read -r READLINE; do
   echo "File content == $READLINE"
done < "$FILE"
