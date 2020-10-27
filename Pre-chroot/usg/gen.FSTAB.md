# __ gen.FSTAB __
### Description:  

This generates fstab based upon the current configuration as '/mnt' is the target '/'
  + It creates a UUID based fstab. This means even if you change other partitions on the 
  drive the un-modified partitions will be retained by fstab 

## __Code__
```

#!/bin/bash

[[ /mnt/etc ]] && printf "/mnt/etc exists" || mkdir -p /mnt/etc
genfstab -U -p /mnt >> /mnt/etc/fstab
```
