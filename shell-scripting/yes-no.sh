#!/bin/bash

# Read in one character from STDIN.
#If the character is 'Y' or 'y' display "YES".
#If the character is 'N' or 'n' display "NO".
#No other character will be provided as input.
echo "Are you completed your graduation{yYnN}?"
read choices
case $choices in 
y) echo YES;;
Y) echo YES;;
n) echo NO;;
N) echo NO;;
*) echo "Not a valid choice, choose {yYnN}"
esac