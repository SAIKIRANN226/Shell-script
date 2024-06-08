#!/bin/bash

R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m

ID=(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR= you are not root user"
    exit 1
else
    echo "Now you are root user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then 
    echo "Installing mysql is $R failed you are not root user Please get root access and try"
    exit 1
else
    echo "Installing mysql is $Y SUCCESS"
fi

yum install git -y
if [ $? -ne 0 ]
then 
    echo "Installing git is $R failed you are not root user Please get root access and try"
    exit 1
else
    echo "Installing git is $Y SUCCESS"
fi
