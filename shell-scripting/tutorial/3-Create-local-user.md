# Local User
## Script will create user locally
```sh
#!/bin/bash

# This script creates an accoutn on the local system
# You will be prompte for the account name and the password

# Check for Root user
if [[ ${UID} -ne 0 ]]
then
    echo 'You are not a root user.'
    echo 'Kinldy run this script with root privilages.'
    exit 1
fi

# Ask for the user name
read -p 'What is the username? ' USER_NAME

# Ask for the real name
read -p 'What is your full name? ' COMMENT

# Ask for the passowrd
read -p 'What is your first time password? ' PASSWORD

# Create the user
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if user command succeeded
# We dont want to tell user that account has been created when it has not created
if [[ "${?}" -ne 0 ]]
then
  echo 'The account could not be created'
  exit 1
fi

# Set the password for the user
## for centos
echo "${PASSWORD}" | passwd --stdin ${USER_NAME}

# for ununtu
echo "${USER_NAME}:${PASSWORD}" | chpasswd

if [[ "${?}" -ne 0 ]]
then
  echo 'The pasword is not generated successfully'
  exit 1
fi

# Force passowrd change on first login
passwd -e ${USER_NAME}

# Display the username password and the host where the user was created
echo
echo 'USERNAME:'
echo $USER_NAME
echo
echo 'Password:'
echo $PASSWORD
echo
echo 'Host:'
echo $HOSTNAME
exit 0
```