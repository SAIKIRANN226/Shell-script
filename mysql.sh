#!/bin/bash

ID=$(id u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
DATE=$(date)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2.....$G FAILED $N"
        exit 1
    else
        echo -e "$2.....$G SUCCESS $N"
    fi 
}



if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run the script with root user $N"
    exit 1
else
    echo -e "$Y This script is started executing at $DATE $N"
fi 

yum install mysql -y
VALIDATE $? "Installing mysql"

yum install git -y 
VALIDATE $? "Installing git"

yum install postfix -y
VALIDATE $? "Installing postfix"

