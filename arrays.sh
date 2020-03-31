#!/bin/bash
#simple array list and loop to display
SERVERS=("CLOUD1" "CLOUD SERVER 2" "CLOUD SERVER 3")
COUNT=0

for INDEX  in ${SERVERS[@]}; do
       echo "Processing server: ${SERVERS[COUNT]}"
       COUNT="`expr $COUNT + 1`"
done
