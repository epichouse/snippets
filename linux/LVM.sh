# Shrink local-lvm on Proxmox

# Delete Local-LVM Volume in GUI first


lvresize -l +100%FREE /dev/pve/root

resize2fs /dev/mapper/pve-root