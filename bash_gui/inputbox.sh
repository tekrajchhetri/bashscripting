#!/bin/bash
# apt install dialog
#INPUTBOX box with dialog box
INPUTBOX_BOX=${INPUTBOX=dialog}

#dec function

#func display
funcDisplayINPUTBOXBox(){
	
	$INPUTBOX_BOX --title "[INPUT BOX]" --inputbox "Enter file to display" "15" "40" 2>res.txt
}


funcDisplayINPUTBOXBox 

if [ "`cat res.txt`" != "" ];then
	cat "`cat res.txt`"
else
	echo "nothing"
fi