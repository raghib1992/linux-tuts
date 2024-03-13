2 types of firewall
1. Software - Runs on OS
2. Hardware - A dedicated appliance with firewall software

There are 2 types of firewall in most of the linux distribution
1. iptables For older linux system, but still widely used
2. firewalld - for newer version like 7 and up

Before working with iptables make sure firewalld is not running and disble it
```
service or systemctl stop firewalld
```
To prevent start at boot time
```
systemctl disbale firewalld
```
To prevent running by other program
```
systemctl mask firewalld
```

## To check iptables-service packaged installed 
```
rpm -qa | grep iptables-services
```
if not then installed 
```
yum installed -y iptables-services 

systemctl start iptables
systemctl enable iptables
```

Toc heck iptables rule
```
iptables -L
```
To flush iptables rule
```
iptables -F
```

Function of Ip tables rule is packet filtering
1. tables - tables are something that allow to process in specific way.
  - 4 different types of packet filter, mangle, nat, raw
2. chains - Chains attached to tables, these chain allow you inspect packet at various point. Main 3 chaians are used 
    - input=incoming tarffic
    - Forward=going to a router, from one device to other device
    - output=outgoing traffic
chains allow you filter traffic by adding rules to them
3. target- target define the fate of the target
    - accept = connection accepted
    - Reject = Send reject response
    - Drop = harsh drop

************
# Firewalld

Firewall-cmd

### Firewall has same
   - table
   - chains
   - rules
   - target

## To stop, disables and mask iptable
```
systemctl stop iptables
systemctl disable iptables
```
## 
```
rpm -qa | grep firewalld
```
## start firewaald
```
systemctl start firewalld
systemctl enable firewalld
```

## Check the rule of firewalld
```
firewall-cmd --list-all
```
## Get the list of all services firewall aware of
```
firewall-cmd --get-service
```

## To make firewall re-read the configuration added
```
firewall-cmd --reload
```

## To get the list of all zones
```
firewall-cmd --get-zones
```
## To get the list of active zones
```
firewall-cmd --get-active-zones
```

## To get the firewall rules in publuc zones
```
firewall-cmd --zones=public --list-all
```

## Add 3re party sservice to firewall
firewall-cmd --add-service=http

## to remove the 3rd party service
firewall-cmd --remove-service=http


## to add service permanently
```
firewall-cmd --add-service=http --permanent
```

## to add service not come with predefine rule
### copy nay files form below mention dir and create new file with required service protocol and port
```
cp /usr/lib/firewalld/services/XXX.xml SAP.xml 
systemctl restart firewalld
firewall-cmd --get-service
firewalld-cmd --add-service=sap
```

## To add port 
```
firewall-cmd --add-port=1110/tcp
```

## to remove port
```
firewall-cmd --remove-port=1110/tcp
```

## to reject traffic from incoming ip tables or remove rich rule
```
firewall-cmd --add-rich-rule='rule family="ipv4" source address="19.45.55.2" reject'
firewall-cmd --remove-rich-rule='rule family="ipv4" source address="19.45.55.2" reject'
```

## To block and unblock icmp
```
firewall-cmd --add-icmp-block-inversion
firewall-cmd --remove-icmp-block-inversion
```

## to get the ip address of specific website
```
host -t a www.facebook.com
```
## To block outgoing traffic to a specific website/ip addr
```
firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 -d 31.13.71.36 -j DROP
```

