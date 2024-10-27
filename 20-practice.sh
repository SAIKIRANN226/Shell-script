#!/bin/bash

# Packages to install
PACKAGES=("mysql-server" "git")

# Logfile to store installation logs
LOGFILE="/var/log/mysql_git_install.log"

# Update package list
echo "Updating package list..."
sudo apt update

# Loop through each package and install if not already installed
for package in "${PACKAGES[@]}"; do
    # Check if the package is already installed
    if dpkg -l | grep -q "^ii  $package "; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        sudo apt install -y "$package"
        
        # Verify if the installation was successful
        if [ $? -eq 0 ]; then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi
done

echo "MySQL and Git installation complete."
