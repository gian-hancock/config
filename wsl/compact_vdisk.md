# Compact VDisk
WSL VDisk files automatically grow as required to accomodate for disk space needed by WSL. The 
following process can be used to release disk space back to the host system.

```
wsl --shutdown
diskpart
# Other distros at C:\WSL-Distros\…\ext4.vhdx
select vdisk file="C:\Users\gian\AppData\Local\Docker\wsl\data\ext4.vhdx"
attach vdisk readonly
compact vdisk
detach vdisk
exit
```