# __ mount.PARTS __
### Description:  

_I'm not going to write a full description because I am about to replace this with better practice._

## __Code__

``````
#!/bin/bash

# Quickly mount disks the first time before fstab is generated.
# Simply add the partition path (/dev/sda1) and mount directory 
# (/mnt) to 'disks' file
ROOT_PART='/dev/sda2'
SWAP_PART='/dev/nvme0n1p6'

mount $ROOT_PART /mnt

declare \
 -A \
 disks

source disks

for d in ${!disks[@]}
do
    mkdir \
     -p \
     ${disks[$d]} &> /tmp/.0
    mount $d ${disks[$d]} &> /tmp/.0
done

swapon $SWAP_PART

unset SWAP_PART d disks
```

