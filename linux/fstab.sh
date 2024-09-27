# NFS
nas:/mnt/FastPool/Software /mnt/nas/software  nfs      defaults    0       0

# SMB

# Using a credential file stored in my home directory
//nas/software  /mnt/nas/software-smb     cifs    credentials=/home/dan/.smb,vers=3.0,noperm 0 0
# Using credentials in the fstab file
//nas/software  /mnt/nas/software cifs username=dan,password=Removed,vers=3.0,noperm 0 0


# Mount a directory into another directory on the same machine (root:users ownership in this base)
/mnt/pve/local-sata/data/software/ISOs /mnt/pve/local-sata/template/iso none defaults,bind 0 100

# Data disk
/dev/sdb1 /mnt/data ext4 defaults 0 0