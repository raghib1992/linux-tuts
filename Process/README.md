# Common tool to find process
# ps

## ps with command name
```
ps -C <command name>
ps -C bash
```
## ps with full listing
```
ps -f
ps -fC
```

## ps with -j for job format and -H for hierarchal format
```
ps -jH bash
```

## Note- SID session ID or Process ID session leader - responsible for all the process

## with real user -U and effextive user -u
```
ps -u
ps -U
ps -UfjH
```

## -e for everything
```
ps -e 
```

## to kill the process use SIGKILL
### to get the list of kill
```
kill -l
```
*****************
# What process is running and how much resources it is using
# top

load average- how much work the process asked to do in min 5 min 15 min

PID User Priority Nice-Value Virtual-memory-process-using Residual-momry shared-memory state

x highlight column
<> to move highlight column
R for reverse the short order of column
r for renice
H for changing between task and treads
e E for 
n indidual proces
V forest tres and 
arrow key up and down