# __ set.GRUB __
### Description:  
Installs Grub2 and creates necessary grub.cfg.
Currently this does not scan for additional OSes.

## __Code__
```
#!/bin/bash

fdisk -l
echo "Select EFI Drive: (/dev/sda)"
read EFI
# echo $EFI

pacman -S --noconfirm grub efibootmgr
sleep 2
grub-install --target=i386-pc "/dev/$EFI"
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
