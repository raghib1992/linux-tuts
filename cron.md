# Crontab command used to schedule -tasks
Edit the crontab
```
crontab -e
``` 
List the crontab
crontab -l

remove the crontab
crontab -r

crontab daemon/service that manages scheduling
crond

to manage the crond service
systemctl status crond 


Schedule
-------------------
* * * * *
1 2 3 4 5 

1-minute (0-59)
2-hour (0-23)
3-day of the match (1-31)
4-month (1-12)
5-day of the week (0-6)
--------------------
--------------------
Create crontab entry by scheduling a task

crontab -e
schedule, echo "this is my first crintab enry" > crontab-entry
--------------------
--------------------
Four types of crontab
1. Hourly
2. Daily
3. Weekly
4. Monthly


All the abouve crons are setup in 
/etc/cron.

The timimg for each are set in
/etc/anacrontab -- Except hourly
/etc/cron.d/0hourly -- Hourly

--------------------

-------------------

