#!/bin/bash

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m"


packages=("mysql" "git" "vim" "htop")


echo -e "${YELLOW}Updating package list...${NC}"
if sudo apt update; then
    echo -e "${GREEN}Package list updated successfully!${NC}"
else
    echo -e "${RED}Failed to update package list.${NC}"
    exit 1
fi


echo -e "${YELLOW}Installing packages...${NC}"
for package in "${packages[@]}"; do
    echo -e "${YELLOW}Installing $package...${NC}"
    if sudo apt install -y "$package"; then
        echo -e "${GREEN}$package installed successfully!${NC}"
    else
        echo -e "${RED}Failed to install $package.${NC}"
    fi
done

echo -e "${GREEN}All packages installed!${NC}"
