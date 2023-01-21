# Pre-chroot
_Take these steps before chrooting into the new installation_  

---  

_Always remember to use `man <cmd>` or `<cmd> --help` to get details on what a program does before you destroy valuable data. -- every linux instructor/mentor ever_  

1. Locate your desired target drive for the linux installation with `lsblk`  
2. use `fdisk` to partition the drive, considering:
    - Somwhere for swap space (perhaps not on this drive, but you'll want some)  
      - Linux Swap Space `t`ype  
      - size is typically a balance of how much valence memory you want, and how much SSD space you're willing to sacrifice. 4Gb is a fairly common recommendation. You can also expand swap space later with additional drives or swap-files on existing drives.  
    - 300Mb+ of fat EFI boot partition  
      - bootable flag  
      - EFI `t`ype  
    - possible separate /home or /usr partitions/drives  
      - Linux filesystem `t`ype (including `/`)  
3. use `lsblk` again to identify your new partion(s)  
4. format your partitions appropriately with mkfs.<ext4|vfat|btrfs>  
    - format the boot partition: `mkfs.vfat -F 32 -L '/boot' /dev/sda1`  
    - format the root partition: `mkfs.ext4 -L '/' /dev/sda2  
    - format the swap partition: `mkswap /dev/sda3 -L Swap`  
5. make 'play' executable: `chmod +x ./play`  
6. press `./play`!  
