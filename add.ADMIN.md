# add.ADMIN 
### Description:  
This is for quickly adding an Admin user to Arch.
Ensures all necessary groups are added to the user.

## __Code__
```
#!/bin/bash

echo "Enter a name for the new SuperUser:"
read $USER
useradd -m -g users -G adm,audio,network,video,wheel $USER
```
