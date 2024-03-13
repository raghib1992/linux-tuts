1. Output the usage of drive
```sh
df
df -h
```
2. To check the usage of disk by files
```sh
du
du -h
# to check total current directory disk usage
du -sh
du -sh *
```
3. Search file
```
find . -name "git"
find . -type f -size +100k
find /home/raghib -type f -size +10M
```
4. output files
```
tail file.txt
tail -f file.txt
```
