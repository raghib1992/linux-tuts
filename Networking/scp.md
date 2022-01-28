# SCP
## Port 22
## Protocol to transfer file securily
## command to transfer file 
```
scp <file-name> user@ip:/dir
```
eg
```
scp ftp.txt raghib@ftp-server:/home/raghib
```
*********************************
# rsync
## Install rsync
```
yum install rsync
```
## rsync a file on local machine
```
tar cvf backup.tar .
mkdir /tmp/backups
rsync -zvh backup.tar /tmp/backups/
```
## rync a dir on local machine
```
rsync -azvh /home/raghib/ /tmp/backups/
```
## rsync a file on remote directory
```
mkdir /tmp/backups (on remote server)
rsync -avh backup.tar raghib@ftp-server /tmp/backups/
```
## rsync a file from remote directory
```
touch serverfile 
rsync -azvh raghib@ftp-server:/home/raghib/serverfile /tmp/backups/
```
```
rsync <option> <source> <destination>
```