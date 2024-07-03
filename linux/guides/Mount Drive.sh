# Guide on partitioning a new drive, creating and mounting filesystem

# List all devices + partitions to find new device
lsblk -a

# Partition the new disk found above (/dev/sdb in this case)
sudo parted -l
sudo parted /dev/sdb
select /dev/sdb

#Make GPT Partition Table
mklabel gpt

print

#Create partition, max size should be printed above
mkpart primary ext4 1MB 34GB

#Quit to save changes
quit

# Create a filesystem on the partition created about (EXT4 in this example)
sudo mkfs.ext4 /dev/sdb1

# Add a mount entry to /etc/fstab, this will cause the drive to automatically mount upon starting the server. (Note the sdb1 indicates the partition created above, you are not mounting the whole block device.)
/dev/sdb1 /mnt/data ext4 defaults 0 0

# Create Mount Point location and mount the new partition
sudo mkdir /mnt/data
sudo mount -a

# The mount point of /mnt/data should now be displayed for your partition
lsblk -a