#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run this script with root user"
    exit 1
else
    echo -e "$Y Now you are root user Please proceed with the script"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo -e "$R Installing mysql is FAILED"
    exit 1
else
    echo -e "$G Installing mysql is SUCCESS"
fi
