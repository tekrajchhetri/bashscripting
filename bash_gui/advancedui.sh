#!/bin/bash
# apt install dialog
#MENUBOX box with dialog box
MENUBOX_BOX=${MENUBOX=dialog}

#dec function

#func display
funcDisplayMENUBOXBox(){
	# $1 = title, $2 message $3 xcoord $4 ycoord
	$MENUBOX_BOX --title "[M A I N M E N U]" --menu "Use UP/Down arrows to Move and Select or the number of Choice  and Enter" "15" "40" 3 1 "Display Hello World" 2 "Display Good bye" X "Exit" 2>choice.txt
}


funcDisplayMENUBOXBox 

case "`cat choice.txt`" in
	1) echo "Hello World";;
	2) echo "Good bye";;
	X) echo "Exit";; 
esac