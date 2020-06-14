#!/bin/bash
#demo of nested functions

NUM=$1


funcMain(){
	echo "Inside main Funciton"

	funcNested(){
		echo "Nested Function"
	}
}

if [ "$NUM" -eq 1 ]; then
	funcMain
	funcNested
fi