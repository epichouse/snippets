# Full filesystem sizes
sudo df -h

# Get top level folder sizes
du -cha --max-depth=1 / | grep -E "M|G"

# All sub folders and files
du -h /docker

# One level deep
du -ha /docker --max-depth=1

# Set owner/group of a folder as dan recursively
sudo chown dan:dan -R /afolder

# Set both owner and group as Read/Write/Execute with no permissions assigned to others.
sudo chmod 770 -R /afolder

