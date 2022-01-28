# FTP
## Protocol to tramsfer file between client and server
## Default port is 21
## Client (file) -->-->--> (file) Server
## Install and configure ftp on server
```
sudo su
rmp -qa | grep ftp
ping www.google.com
yum install vsftpd
```
## edit /etc/vsftpd/vsftpd.conf
### Disable anonymous login
```
anonymous_enable=NO
```
### Uncomment
```
ascii_upload_enable=YES
ascii_download_enable=YES
```
### Uncomment-Enter your welcome message
```
ftpd_banner=Welcome to Raghib FTP server
```
### Use localtime
```
use_localtime=YES
```
## Start the service 
```
systemctl start vsftpd
systemctl enable vsftpd
```
## Create account for ftp puspose
## From Client side
```
sudo su
yum install ftp
sudo su <ftp user>
touch ftp.txt
```
```
ftp <ip/hostname>
enter username and password
bi
hash
put <file name>
bye
```
## create user for ftp