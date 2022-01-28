#!/bin/bash

# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
#If all three sides are equal, output EQUILATERAL.
#Otherwise, if any two sides are equal, output ISOSCELES.
#Otherwise, output SCALENE.

read a b c
x=$a
y=$b
z=$c

if [[ $x == $y && $y == $z ]]
then
    echo EQUILATERAL
elif [[ $x == $y || $x == $z || $y == $z ]]
then
    echo ISOSCELES
else
    echo SCALENE
fi