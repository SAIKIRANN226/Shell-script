#!/bin/bash

ID=$(id -u)
DATE=$(date)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0/saikiran.log

VALIDATE(){
     if [ $1 -ne 0 ]
     then
        echo -e "$2 ERROR: $R... failed $N"
     else
        echo -e "$2 ...$G SUCCESS $N"
    fi
}


if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: Please run this script with the root user"
else
    echo -e "$Y Now you are root user"
fi

yum install mysql -y 
VALIDATE $? "Installing mysql"

