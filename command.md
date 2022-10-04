## to view ip
```
ifconfig
```
## to view hostname
```
hostname
cat /etc/os-release
```
## to check package
```
which <package>
```
## filter
```
grep
```
## arrange the file alphabetically on first letter of the line
```
sort file
```
**********************************
## to create user
```
useradd raghib
```
## to view user
```
cat /etc/passwd
```
********************************
## to create group
```
groupadd raghib
```
## to view group
```
cat /etc/group
```
## to add user into group
```
gpasswd -a <user> <group name>
usermod -a -G groupname username
```
## to add multiple user
```
gpasswd -M <user1,user2,user3> <group>
```
**********************************
## hardlink (backup)
```
ln
```
## softlink (shortcut)
```
ln -s
```
****************
## to archive used to combined multiple directory in one
```
tar -cvf(create verbose force) file.tar folder
```
## to compress the file to reduce the size
```
gzip
```
## unzip
```
gunzip
```
## to untar
```
tar -xvf (extract verbose force) file
```
***************************************
## non interactive downloader
```
wget
```
***************************************
# access mode
## to change the access mode of the file
```
chmod
```
## to change owner of the file or directory
```
chown
```
## change group of the file or dir
```
chgrp
```
