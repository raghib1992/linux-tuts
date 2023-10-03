# Boot Process
1. BIOS POST
Power On Self Test - To test hardware connect is function correctly
2. Boot loader( GRUB2)
3. Kernel Init
4. Init Process (systemd)
- Check systemd
```sh
ls -l /sbin/init
```


# Run level
- runlevel 5 - Boots into graphical mode - graphical.target
- runlevel 3 - Boots into CLI - multiuser.target
runlevel 0 -> poweroff.target

runlevel 1 -> rescue.target

runlevel 2 -> multi-user.target

runlevel 3 -> multi-user.target

runlevel 4 -> multi-user.target

runlevel 5 -> graphical.target

runlevel 6 -> reboot.target

# check run level
```
runlevel
```
# check systemd Target
```sh
systemctl get-default
# This command look for the file located at 
ls -l /etc/systemd/system/default.target
# To chenage default systemd target
systemctl set-default multi-user.target
```