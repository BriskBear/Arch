# __Archlinux Root Scripts__
### Pre-chroot
  These scripts are for use before `arch-chroot`ing into the mounted filesystem.
  + [set.NTP](Pre-chroot/set.NTP.md)
  + [Install.Arch](Pre-chroot/Install.Arch.md)
  + [initPkg.list](Pre-chroot/initPkg.list.md)
  + [gen.Fstab](Pre-chroot/gen.Fstab.md)
### After `arch-chroot /mnt`
  Scripts for configuration from LiveUSB.
  + [set.Time](set.Time.md)
  + [Localize](Localize.md)
  + [add.ADMIN](add.ADMIN.md)
  + passwd
	```  
    passwd <username> (blank for currentuser)
	(current) UNIX password: <your password>
	Enter new UNIX password: <a new password>
	Retype new UNIX password: <repeat new password>
	passwd: password updated successfully
	```
	Run this for root (probably logged in) 
	and for the non-root superuser added with add.ADMIN
  + set.GRUB (Work in Progress)
