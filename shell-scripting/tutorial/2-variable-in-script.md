# Script create user on local machine
### '#' is called sharp
### '!' is called bang
### '#!' is called shebang
### To create shell script first line should be
```sh
#!/bin/bash


# this is comment line
# Display the text hello
echo 'Hello'

# Assign a value to a variable
WORD='Script'

# Dispaly that value using a varible
echo "$WORD"

# Demonstrate single quote cause variable to not get expalnded
echo '$WORD'

# Conbine the variable with hardcoded text
echo "This is shell $WORD"

# Dislay the contexts of the variable using an alternative syntax
echo "This is shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is a fun"

# Show how NOT to append text to a variable
# This doesn't work

echo "$WORDing is fun"

# Creating new variable
ENDING='ed'

# COMbine to variable
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENIDNG variable (Reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is a fun"

# Reassign value to ENING
ENDING='s'
echo "You are going to wrties many ${WORD}${ENDING} in this class"
```

### For python scripting
```sh
#!/usr/bin/python
```

### For ruby scripting
```sh
#!/bin/ruby
``` 


## Script to check localuser
```bash
#!/bin/bash

# Display the uid of User
echo "Your user UID is $UID"
# echo $(id -u)

# Display the Username
USERNAME=$(id -un)
echo "YOur username is $USERNAME"
USER_NAME=`whoami`
echo $USER_NAME

# Check for Root USer
if [[ ${UID} -eq 0 ]]
then
echo "You are Root User"
else
echo "You are Root user"
fi
```
*******************
## Exit status, Return codes, String test condition, More special varibles.
```sh
#!/bin/bash

# Display UID and Usernameof the user executing shell script
# Display if the user is raghib user or not

# Display the UID
echo "${UID}"

# Only display if UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
  echo "You UID does not match ${UID_TO_TEST_FOR}"
  exit 1
fi

# Display the username
USER_NAME=`id -un`

# Test if command succeeded
if [[ "${?}" -ne 0 ]]
then
  echo "The id command did not execute successfully"
  exit 1
fi

echo "Your username is ${USER_NAME}"
echo $USER_NAME
# You can use a sting test condition
USER_NAME_TO_TEST_FOR='raghib'

if [[ $USER_NAME = $USER_NAME_TO_TEST_FOR ]]
then
  echo "Your username is matches ${USER_NAME_TO_TEST_FOR}"
fi
# Test for != (not equal) for the string
if [[ $USER_NAME != $USER_NAME_TO_TEST_FOR ]]
then
  echo "Your username did not match to ${USER_NAME_TO_TEST_FOR}"
  exit 1
fi

exit 0
```