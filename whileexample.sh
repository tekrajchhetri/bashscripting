#!/bin/bash
# while loop

echo "Enter n for display hello world"
read N
echo $N
COUNT=1
while [ $COUNT -le $N ];do
 echo "Hello - $COUNT"
 COUNT="`expr $COUNT + 1`"
done

