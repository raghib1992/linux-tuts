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
echo "You are going to wrties many ${WORD}$}${ENDING} in this class"
```

### For python scripting
```sh
#!/usr/bin/python
```

### For ruby scripting
```sh
#!/bin/ruby
```