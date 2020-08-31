# Install.Arch 
### Description:  

Calls the main Pacstrap for loading arch into a filesystem mounted @ /mnt. 

At a minimum this script installs:
  + Base
  + linux
  + linux-firmware

It appends this list with the contents of initPKG.list which are subject
to change. Those programs will be listed in that readme instead.

## __Code__
```
#!/bin/bash

# list of dependecies from file
PKG_list=()

. $HOME/Arch/Pre-chroot/initPkg.list
pacstrap /mnt base linux linux-firmware ${PKG_list[@]}
```
