# cat
## Create file
```
cat > file.txt
```
### to exit out ctrl+d
## add new line
```
cat >> file.txt
```
## to add to file
```
cat file1 file2 > file3
```
*********************************
# touch
## to create a empty file
```
touch file1
touch -a
touch -m
```
## to view access time, modify time and change time of file
```
stat file
```
### change last time when the file was access time
```
touch -a
```
### change last time the file is modify timie
```
touch -m
```
## create multifile file
```
touch file1 file2
```
*********************************************
# vi
## to save and quit
```
:wq or :x
```
## to save
```
:w
```
## to quit
```
:q
```
## force quit
```
:q!
```
**********************************
# nano
## to create file
```
nano file
```
## editor
```
crtl+x # to exit edit mode
shift+y or Y # to save the file
enter # to exit
```
## to overwrite
```
ctrl+o
```
**********************************************
# hide
## hidden file (to put . before file)
```
touch .file
```
## hidden directory (put . before file name)
```
mkdir .folder
```
*********************
# copy
```
cp source-file destination-file
```
*********************
# cut/rename
```
mv source-file destinantion-file
```
****************
# remove
## remove directory
```
rmdir folder
rmdir -p folder # parent and child
rmdir -pv folder # remove parent and child file with verbose
rm -r folder
rm -rf folder #remove with force
rm -rp
```
**************************************
# less (to view content fite on the screen from top)
```
less file
```
# head ( to view top 10 line)
```
head file
```
# tail ( to view last 10 line)
```
tail file
```
# more ( to view all file)
```
more file
```


