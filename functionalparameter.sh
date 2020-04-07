#!/bin/bash

username=$1

funcAge(){
 #here $1 will take the first artument of function unlike outside of function where it takes commandline args 
  echo "Hello: $username, you're $1 years old"
  echo "That makes you approximately `expr $1 \* 365` days old .."
}

clear
echo "Enter age"
read age
#passing parameter to funcAge --> age
funcAge $age 
