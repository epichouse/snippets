sudo parted -l
sudo parted /dev/sdb
select /dev/sdb

#Make GPT Partition Table
mklabel gpt

print

#Create partition, max size should be printed above
mkpart primary ext4 1MB 34GB

# Quit to save changes
quit

# Create filesystem
sudo mkfs.ext4 /dev/sdb1

# Then mount via fstab