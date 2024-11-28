#!/bin/bash

ID=$(id u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

DATE=$(date)

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run the script with root user $N"
    exit 1
else
    echo -e "$Y This script is started executing at $DATE $N"
fi 

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo -e "$R ERROR:: Installing mysql is failed $N"
    exit 1
else
    echo -e "$G Installing mysql is SUCCESS $N"
fi
