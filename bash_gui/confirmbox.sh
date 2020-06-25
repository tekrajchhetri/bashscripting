#!/bin/bash
# apt install dialog
#CONFIRM box with dialog box
CONFIRM_BOX=${MSGBOX=dialog}
CONFIRM_BOX_TITLE="CONFIRM box title"
XCoord=20
YCoord=40

#dec function

#func display
funcDisplayCONFIRMBox(){
	# $1 = title, $2 message $3 xcoord $4 ycoord
	$CONFIRM_BOX --title "$1" --msgbox "$2" "$3" "$4"
	sleep "$5" #to make it stay for time specified by user in screen

}

if [ "$1" == "shutdown" ]; then
	funcDisplayCONFIRMBox "Warning!!" "We are shutting down system..." "11" "22" "5"
	echo "shutdown"
else
	funcDisplayCONFIRMBox "CONFIRM!!" "Not doing anything..." "11" "22" "5"
fi