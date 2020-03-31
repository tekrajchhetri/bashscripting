#!/bin/bash
# trap ctrl c and ctrl z
#example of trap and signal

clear
trap 'echo "Enter Q to exit"' SIGINT SIGTERM SIGTSTP
while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
 echo "MAIN MENU"
 echo "========="
 echo "1) Choice one"
 echo "2) Choice two"
 echo "Q) exit"
 echo ""
 read CHOICE
 clear
done
