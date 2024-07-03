# Step 1 - Install MySQL

 
# This includes all steps involved in getting MySQL installed and the initial configuration complete, this does not enable remote access or remote root login.

sudo apt update
sudo apt install mysql-server
sudo mysql
  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ENTERPASSHERE';
  exit
sudo mysql_secure_installation

mysql -u root -p
  ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;
  exit

# Step 2 - Enable Remote Access

# MySQL is bound to the loopback address by default, hence remote access doesn't work....
sudo su
sed -i.bak -e 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
cat /etc/mysql/mysql.conf.d/mysqld.cnf | grep bind
exit

# Step 3 - Create Root User with access from everywhere

#The default root user is only usable from the localhost regardless of the above step being competed.
CREATE USER 'root'@'%' IDENTIFIED BY 'ENTERPASSHERE'; 
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;