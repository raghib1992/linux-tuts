#!/bin/bash
# The first line contains an integer, .
# Each of the following  lines contains a single integer.

read n  
x=0
sum=0
while [ $x -le $n ]
do
    read temp
    sum=$(($temp+$sum))
    x=$(($x+1)) 
done
printf "%.3f\n" $(bc -l <<< $sum/$n)