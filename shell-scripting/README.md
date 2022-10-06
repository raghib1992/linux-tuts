## To check the version of the bash
bash --version

## to check the shell
echo $SHELL

## Parameter Expansion
a="Hello World"
echo $a
echo ${a}

echo ${a:5}
echo ${a::5}
echo ${a/World/India}
echo ${a//e/_}
echo ${a/l/_}

## Command Substitution
### command to get release version of kernel
uname -r
echo "The kernel is $(uname -r)"
## Arithmetic Expansion

### Only for integer
echo $(( 2+2 ))

## editor
### nano
save file ctrl + O
exit      ctrl + x

## Bash Sript
1. myscript.sh

2. #!/usr/bin/env bash

nano myscript
```
#!/usr/bin/env bash
echo "This is my first Script"

# This is comment
echo "Doing Great!!!"

greeting=Hello
name="Md Raghib Nadim"
age=30

echo $greeting
echo $name age is $age

name="Md Rashid Azim"
age=26

echo $greeting
echo $name age is $age

# Read Only Varibale
declare -r myname="Raghib"
echo "My name is $myname"

myname=Rahid
echo $myname

declare -l lowerstring="Here Some LowerCase Value Text"
echo $lowerstring
lowerstring="Lets CHANGE the VALUE"
echo $lowerstring

declare -u upperstring="Here Some UpperCase Value Test"
echo $upperstring
upperstring="Lets CHANGE the VALUE"
echo $upperstring
```

## Number
 
echo $(( 4+5 ))

a=3
## To add number on itself 
echo (( a+=3 ))

## To increase number by 1
echo (( a++ ))

## To decrease number by 1
echo (( a-- ))

declare -i b=3

echo (( $b++ ))

b= $b+3

echo $(( 1/3 ))

## To need floating and decimal use bc or awk

declare -i c=1
declare -i d=3
e=$(echo "scale=3; $c/$d" | bc)
echo $e

## To generate Random number
echo $RANDOM
## Random number n range 1 - 10
echo $(( 1 + $RANDOM % 10 ))

## Comapre Values

 