# set.Time 
### Description:  

Displays Timezone options and promts to select yours.
Simply type the name as it is displayed above and the script does the rest!

## __Code__
```
#!/bin/bash

echo "Select a Timezone:"
ls /usr/share/zoneinfo
read ZONE
ln -sf /usr/share/zoneinfo/$ZONE /etc/localtime
hwclock --systohc
```
