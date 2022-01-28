# Network Trouble Shooting
## Important Rule
### Packet Don't Lie
## Layer1 Physical layer
###  Is our physical interface up? 
```
ip link show
ip -br link show
```
###  to bring the interface up
```
ip link set eth0 up
```
###  Interfaces can negotiate at the incorrect speed, or collisions and physical layer problems can cause packet loss or corruption
```
ip -s link show eth0
```
## For more advanced Layer 1 troubleshooting
```
ethtool eth0
```
## Layer 2: The data link layer
### The most relevant Layer 2 protocol for most sysadmins is
```
ARP (which maps Layer 3 IP addresses to Layer 2 Ethernet MAC addresses)
```
### check the entries in our ARP table
```
ip neighbor show
```
## Layer 3: The network/internet layer
### One of the first steps to troubleshooting is checking a machine’s local IP address
```
ip -br address show
```
### Ping sends an ICMP Echo Request packet to a remote hos
```
ping 
```
### Traceroute takes advantage of the Time to Live (TTL) field in IP packets to determine the path that traffic takes to its destination
```
traceroute www.google.com
```
### When an IP packet is sent to a different network, it must be sent to a gateway for further processing. The gateway should know how to route the packet to its final destination
```
ip route show
```
### If our topology is more complex and we require different routes for different networks, we can check the route for a specific prefix:
```
ip route show 10.0.0.0/8
```
