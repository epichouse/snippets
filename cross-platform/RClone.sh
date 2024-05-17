# Configure RClone
rclone config

# Copy without deleting files in destination
rclone copy '/home/dan' BackBlaze:'Cloud46Test/homefolder'

# Copy and delete files in destination
rclone sync '/home/dan' BackBlaze:'Cloud46Test/homefolder'