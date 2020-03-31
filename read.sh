#!/bin/bash

#read user input

echo "Enter your name"
read FIRSTNAME
echo "Enter your lastname"
read LASTNAME

echo ""
echo "Your full name is: $FIRSTNAME $LASTNAME"
echo ""
echo "Enter your age"
read AGE
echo "You will be  `expr $AGE + 10` years after 10 years"

