#!/bin/bash

# Update the system packages
sudo yum update -y

# Install EPEL repository
sudo yum install epel-release -y

# Install Nginx
sudo yum install nginx -y

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Configure firewall to allow HTTP and HTTPS traffic
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
chmod 111 update.sh


# Print server IP address
echo "Nginx is now installed and accessible at your public ip/dns"


