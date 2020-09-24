# set.NTP 
### Description:  

Syncs the Session-Clock with NTP. 
This is a pre-requisit of getting the TimeZone working properly.

## __Code__
```
#!/bin/bash

timedatectl set-ntp true
timedatectl status
```
