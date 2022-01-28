ref http://www.panix.com/~elflord/unix/bash-tute.html
## -eq == equal
```
a='name'
if { $a -eq file }
then echo this
else
echo that
fi
```
*********************************************
## -e == to check file
```
if { -e /etc/passwd}
    then
    echo "file exit"
    else
    echo "file doesn't exit"
fi
*********************************************
