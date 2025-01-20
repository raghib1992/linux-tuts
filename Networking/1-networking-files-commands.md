# Interface configuration files
- /etc/nsswitch.conf (It tell system where is resolve hostname to IP address)
- /etc/hosts
- /etc/sysconfig/network
- /etc/sysconfig/network-scripts/ifcfg-nic
- /etc/resolv.conf (Resolve DNS)



# Network Command
```sh
ping

ifconfig
ip a

ifup 
ifdown

netstat #(Define Routing, how traffic is flowing)
netstat -rnv

tcpdump #(Trace every single transaction of your machine)
tcpdump -i <interface>
```


# NIC
```sh
# get information about NIC
# become root first
ethtool <interface>

# NIC lo (communication withit self) 
```

# NIC Bonding
### Aggregation or combination of multiple NIC into a single bond interface
### Provide high availability and redundancy(throughput of NIC added)
### Process of bonding
```sh
# get interface
sudo su
ifconfig | more

# Install bonding driver
modprobe bonding

# Get the details of drive and verify
modinfo bonding | more

# Create file for bond NIC
vi /etc/sysconfig/network-scripts/ifcfg-bond0 
### Add the following parameters 
DEVICE=bond0 TYPE=Bond NAME=bond0 BONDING_MASTER=yes BOOTPROTO=none ONBOOT=yes IPADDR=192.168.1.80 NETMASK=255.255.255.0 GATEWAY=192.168.1.1 
BONDING_OPTS=”mode=5 miimon=100” 
# BOOTPROTO = none or static is if you want to assign a static IP address
# Save and exit the file

# Create first file NIC
vi /etc/sysconfig/network-scripts/ifcfg-enp0s3 
# Delete the entire content 
# Add the following parameters 
TYPE=Ethernet BOOTPROTO=none DEVICE=enp0s3 ONBOOT=yes 
HWADDR=”MAC from the ifconfig command” MASTER=bond0 SLAVE=yes 
# Save and exit the file 
 
# Create Second NIC File

# Restart netwrok
systemctl restart network

# verify
ifconfig | more
cat /proc/net/bonding/bond0
```