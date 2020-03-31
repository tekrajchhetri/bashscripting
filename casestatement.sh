#!/bin/bash

# demo case statement

echo "Main Menu"
ehco "========="
echo "1) Choice one"
echo "2) Choice two"

echo ""
echo "Enter choice: "
read MENUCHOICE

case $MENUCHOICE in
   1)
	echo "First choice"
	;;
   2)
	echo "Second choice"
	;;
   *)
	echo "All other"

esac
