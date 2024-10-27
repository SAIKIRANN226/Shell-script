#!/bin/bash

# Packages to install
PACKAGES=("mysql-server" "git")

# Logfile to store installation logs
LOGFILE="/var/log/mysql_git_install.log"

# Update package list
echo "Updating package list..."
sudo yum update -y

# Loop through each package and install if not already installed
for package in "${PACKAGES[@]}"; do
    # Check if the package is already installed
    if yum list installed "$package" >/dev/null 2>&1; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        sudo yum install -y "$package"
        
        # Verify if the installation was successful
        if [ $? -eq 0 ]; then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi
done

# Start MySQL service if installed successfully
if systemctl is-active --quiet mysqld; then
    echo "MySQL is already running."
else
    echo "Starting MySQL service..."
    sudo systemctl start mysqld
    sudo systemctl enable mysqld
    echo "MySQL service started and enabled to start on boot."
fi

echo "MySQL and Git installation complete."
