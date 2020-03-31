#!/bin/bash

shopt -s expand_aliases
alias TODAY="date"
alias USERFILES = "find /home -user root"

A=`TODAY`
B=`USERFILES`
echo $A
echo $B
