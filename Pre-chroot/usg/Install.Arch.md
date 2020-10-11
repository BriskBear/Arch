# Install.Arch 
### Description:  

Calls the main Pacstrap for loading Arch Linux into a filesystem mounted @ /mnt. 

At a minimum this script installs:
  + Base
  + linux
  + linux-firmware

It appends this list with the contents of Arch/Pre-chroot/initPKG.list.
If you want more than those 3 create a link to your desired baseCFG,
 or examine those stylings and write your own by that name.

### Simple 1st  
  
My first barebones install is baseCFG/starter.

## __Code__
```
#!/bin/bash

# list of dependecies from file
PKG_list=()

. $HOME/Arch/Pre-chroot/initPkg.list
pacstrap /mnt base linux linux-firmware ${PKG_list[@]}
```
