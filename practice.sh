#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR= you are not root user,Please run the script with root user"
    exit 1 
else
    echo "Now you are root user your file is working....please be wait"
fi


yum install nginx -y
if [ $? -ne 0 ]
then 
    echo "ERROR: Please get the root access first"
    exit 1
else
    echo "Installation is going and it is success"
fi