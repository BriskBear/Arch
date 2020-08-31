# __ Install.Arch __
### Description:  

Calls the main Pacstrap for loading arch into a filesystem mounted @ /mnt.
This installs at a minimum base, linux and linux-firmware, then continues 
to add packages specified in initPkg.list. You can simply append this list
by running add.PKG

## __Code__
```
#!/bin/bash

# list of dependecies from file
PKG_list=()

. $HOME/Arch/Pre-chroot/initPkg.list
pacstrap /mnt base linux linux-firmware ${PKG_list[@]}
```
