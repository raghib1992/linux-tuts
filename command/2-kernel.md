## Its is core interface between computer application/process and computer hardware

## Kernel responsible for 4 major tasks
1. Memory Management
2. Process Management
3. Device Drivers
4. System calls and security
5. Monolithic
6. Modular


## Kerena version
```sh
uname
# Linux

uname -r
#5.15.90.1-microsoft-standard-WSL2
```
### Ref
- *https://kernel.org*


## Memory
### Memory are divide into two area
- Kernal Space
    - kernel
    - device drivers
- User Space
    - application/process

## Command to display hard-disk detials
dmesg
- to print msg generated by krenal
lsblk
- get the details of block devices
lscpu
- cpu arch, core, threads
lsmem --summary
- list available memory in the system
free -m 
- show total memory vs used memory
- -k for kb, -m for mb, -g for gb
lshw
- detail info of hardware