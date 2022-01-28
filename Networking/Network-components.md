## IP address
## Subnet mask
## Gateway
## Static and DHCP
## Interface
## MAC accosiacate with interface
*********************************************
# Networ Files and command
## Interface Configuration files
/etc/nsswitch.conf
/etc/hosts
/etc/sysconfig/network or /etc/hostname  ## define hostname
/etc/sysconfig/network-scripts/ifcfg-nic
/etc/resolv.conf
## Interface command
ping
ifconfig | more
ifup
ifdown
netstat -rnv
tcpdump -i <interface name>
*************************************
# NIC
## comand to find the information about NIC
```
ethtool <interface name>
```
**************************************
# NIC Bonding
## Combination of multiple link into a single bond interface
## HA and redundancy
```
modprobe bonding
modinfo bonding
Create /etc/sysconfig/network-scripts/ifcfg-bond0
edit /etc/syscinfig/network-scripts/ethernet1
edit /etc/syscinfig/network-scripts/ethernet1
systemctl restart network
```
************************************
# New Netwrok Utilities
## Network Manager tool
### INSTALL
```
apt install network-manager
sudo /etc/init.d/network-manager start
nmtui
nmcli
```
*************************