# RSYNC Commands

# Copy Contents of a folder into a folder on another server, without deleting files in destination that are not in source

rsync -avh --no-perms -e ssh /home/dan/testfolder/ dan@vm-nginx-test-01:/home/dan/testfolder



# Copy Contents of a folder into a folder on another server, with deleting files in destination that are not in source

rsync -avh --no-perms -e ssh /home/dan/testfolder/ dan@vm-nginx-test-01:/home/dan/testfolder --delete



# Copy folder into a folder on another server, without deleting files in destination that are not in source (notice the slash missing)

rsync -avh --no-perms -e ssh /home/dan/testfolder dan@vm-nginx-test-01:/home/dan/testfolder



# Copy folder into a folder on another server, with deleting files in destination that are not in source (notice the slash missing)

rsync -avh --no-perms -e ssh /home/dan/testfolder dan@vm-nginx-test-01:/home/dan/testfolder --delete


#Copy local file with progress (THIS IS SWEEEEET)
rsync --progress /path/to/source-file /path/to/destination



####Retain Permissions for Docker Restores
# Run as root on Backup Server
rsync -avzogp gitea dan@vm-app-prod-01:/docker/appstemp/ -r --rsync-path="sudo rsync"