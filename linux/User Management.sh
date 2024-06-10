# Users List - /etc/passwd
# Groups List - /etc/group	

# New User
sudo adduser testuser

# New Group
sudo groupadd testgroup

# Add User to Group
sudo usermod -aG testgroup testuser