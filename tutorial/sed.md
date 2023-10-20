Replace a string ina file with a new string
Find and delete a line
Remove empty lines
To replace tabs with space
show defined lines from a file
substitute within vi editor
and much more



To replace old with new in file 
```
sed 's/old/new/g' file.txt --g is for global ( all old in a file) -- to make changes in screen only
sed -i 's/old/new/g' file.txt -- to make changes in file also
```

to delete old
```
sed -i 's/old//g' file.txt
sed -i '/old/d' file.txt
```

to delete empty lines
```
sed -i '/^$/d' file.txt
``` 

to remove first line of file
sed -i '1d' file

to remove first 2 line
sed '1,2d' file.txt

to remove the tab with spaces
sed 's/\t/ /g' file.txt

to remove spaces with tab
sed -i 's/ /\t/g' file

to view line 12 to 1 lines
sed -n 12,18p file.txt

to view all except line 12 to 18
sed 12,18d file.txt

to add empty line after every lines
sed -G file

sed '8!s/old/new/' file.txt --replace all old with new except lines no. 8

to replace in vi old with new
:%s/old/new

