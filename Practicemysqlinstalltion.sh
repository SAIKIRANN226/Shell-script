#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR= you dont have root access"
else
    echo "now you are root access"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation is failed"
    exit 1
else
    echo "installing is success"
fi