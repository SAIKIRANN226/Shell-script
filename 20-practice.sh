#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo -e "$2 ..$R FAILED $N "
       exit 1
    else
        echo -e "$2... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run this script with root user"
    exit 1
else
    echo -e "$Y Now you are root user Please proceed with the script $N"
fi

for package in $@
do
    yun list installed $package
    if [ $? -ne 0 ]
    then 
        yum install $package -y
        VALIDATE $? "Installing $package
    else
        echo -e "$Y Already installed so SKIPPING $N"
    fi
done

