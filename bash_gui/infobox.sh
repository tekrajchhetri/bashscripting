#!/bin/bash
# apt install dialog
#info box with dialog box
INFO_BOX=${INFOBOX=dialog}
INFO_BOX_TITLE="Info box title"
XCoord=20
YCoord=40

#dec function

#func display
funcDisplayInfoBox(){
	# $1 = title, $2 message $3 xcoord $4 ycoord
	$INFO_BOX --title "$1" --infobox "$2" "$3" "$4"
	sleep "$5" #to make it stay for time specified by user in screen

}

if [ "$1" == "shutdown" ]; then
	funcDisplayInfoBox "Warning!!" "We are shutting down system..." "11" "22" "5"
	echo "shutdown"
else
	funcDisplayInfoBox "Info!!" "Not doing anything..." "11" "22" "5"
fi