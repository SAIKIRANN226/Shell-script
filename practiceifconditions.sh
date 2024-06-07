#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR= Please run with the root user"
    exit 1
else    
    echo "Now you are root user"
fi


yum install git -y
if [ $? -ne 0 ]
then 
    echo "ERROR= Git installation is failure,please run with the root user"
    exit 1
else
    echo "Installation of GIT is success"
    exit 0
fi