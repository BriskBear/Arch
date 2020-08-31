# gen.Fstab 
### Description:  

Generates fstab for the mounted filesystem @ /mnt.

## __Code__
```
#!/bin/bash

genfstab -U /mnt >> /mnt/etc/fstab
```
