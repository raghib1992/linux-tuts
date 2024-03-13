openLDAP service
slapd

to start 
systemctl start slapd

configuration file

/etc/openldap/slapd.d


Install openldap

start the service


check ldap home directory
```
cd /etc/openldap/slapd.d
ls -l
```

modify /etc/nsswitch.conf
```
passwd: files sss
```

sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get install -y slapd ldap-utils
### Note: You will be prompted to enter a password, so do so

LDAP Configuration
Execute this command via SSH:

sudo dpkg-reconfigure slapd
You will be faced with anther set of prompts you must answer in order to configure OpenLDAP.

Omit OpenLDAP server configuration?

No
DNS domain name?

example.com
Organization name?

EXAMPLE
Administration Password?

Same as previous, or a new one
Database backend to use?

HDB
Remove the database when slapd is purged?

No
Move old database?

Yes
Allow LDAPv2 Protocol?

No

Install phpLDAPadmin Package
Execute this command via SSH:

sudo apt-get install -y phpldapadmin


### Configure phpLDAPadmin

sudo vi /etc/phpldapadmin/config.php
POSIX Group
User