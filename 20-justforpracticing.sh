#!/bin/bash

# Define color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m" # No Color

# List of packages to install
packages=("curl" "git" "vim" "htop")

# Update package list
echo -e "${YELLOW}Updating package list...${NC}"
if sudo yum update -y; then
    echo -e "${GREEN}Package list updated successfully!${NC}"
else
    echo -e "${RED}Failed to update package list.${NC}"
    exit 1
fi

# Loop through and install each package
echo -e "${YELLOW}Installing packages...${NC}"
for package in "${packages[@]}"; do
    echo -e "${YELLOW}Installing $package...${NC}"
    if sudo yum install -y "$package"; then
        echo -e "${GREEN}$package installed successfully!${NC}"
    else
        echo -e "${RED}Failed to install $package.${NC}"
    fi
done

echo -e "${GREEN}All packages installed!${NC}"
