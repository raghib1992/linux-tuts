#!/bin/bash

# To comapre two numbers a and b
read a b
X=$a
Y=$b

if [[ $X > $Y ]]
then
    echo X is greater than Y
elif [[ $X == $Y ]]
then
    echo X is equal to Y
else
    echo X is less than Y
fi
#************************************************

# X=3
# Y=4
# empty_string=""
# if [ $X -lt $Y ]	# is $X less than $Y ? 
# then
# 	echo "\$X=${X}, which is smaller than \$Y=${Y}"
# fi

# if [ -n "$empty_string" ]; then
# 	echo "empty string is non_empty"
# fi

# if [ -e "${HOME}/.fvwmrc" ]; then 			# test to see if ~/.fvwmrc exists
# 	echo "you have a .fvwmrc file"
# 	if [ -L "${HOME}/.fvwmrc" ]; then 		# is it a symlink ?  
# 		echo "it's a symbolic link
# 	elif [ -f "${HOME}/.fvwmrc" ]; then 	# is it a regular file ?
# 		echo "it's a regular file"
# 	fi
# else
# 	echo "you have no .fvwmrc file"
# fi