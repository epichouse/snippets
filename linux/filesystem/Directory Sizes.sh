# Full filesystem sizes
sudo df -h

# Get top level folder sizes
du -cha --max-depth=1 ./

# All sub folders and files
du -h /docker

# One level deep
du -ha /docker --max-depth=1
