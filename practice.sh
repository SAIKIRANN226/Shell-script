#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "ERROR= $2 ...failed"
        exit 1
    else
        echo "$2 ...sucess"
}

if [ $ID -ne 0 ]
then 
    echo "ERROR= not root user"
    exit 1
else
    echo "root user"
fi

yum install mysql -y

VALIDATE $? "Installing mysql"

yum install git -y

VALIDATE $? "Installing git"
