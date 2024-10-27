#!/bin/bash

PACKAGES=("curl" "wget" "git" "vim" "htop")

LOGFILE="/tmp/package_install.log"

echo "Updating package list..."
sudo apt update

for package in "${PACKAGES[@]}"; do
    if dpkg -l | grep -q "^ii  $package "; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        sudo apt install -y "$package"
        
        if [ $? -eq 0 ]; then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi
done

echo "Package installation complete."
