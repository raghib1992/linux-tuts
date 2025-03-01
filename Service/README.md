Create any service

EX: Create python app and locate it at /opt/code/my_app.py, Now what thi app should run as service in linux
1. Create unit at location `/etc/systemd/system`
2. file name my_app.service, as we want to our service name should be my_app
3. Create file
```
[Service]
ExecStart=/usr/local/bin/python3 /opt/code/my_app.py
```
4. reload service to know new service has been created
```
systemctl daemon-reload
```
5. Now start your app as service
```
systemctl start service
systemctl status service
systemctl stop service
```
6. To configure to service automatically start when system bootup
```
[Install]
WantedBy=multi-user.target
```
7. enble auto start by
```
systemctl enable my_app
```
8. Also give description
```
[Unit]
Descrition=My Pyhton web app
```
9 .FInal
```
[Unit]
Descrition=My Pyhton web app

[Service]
ExecStart=/usr/local/bin/python3 /opt/code/my_app.py
ExecStartPre=/opt/code/configure_db.sh
ExecStartPost=/opt/code/email_status.sh

[Install]
WantedBy=multi-user.target
```





