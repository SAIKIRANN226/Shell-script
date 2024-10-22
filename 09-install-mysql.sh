#!/bin/bash

ID=$(id -u)   # Runs the command in the shell and taking output

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # You can give other than 0 because clearly we can see above like it is error so give otherthan 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end


yum install mysql -y # -y should give otherwise program will wait for our input yes or no

if [ $? -ne 0 ]   # The lines from 16-22 is to check even after installing myql we need to check wether it is installed properly or not. The only disadvantage in shell is it wont stop if it is facing any error so it is our responsibility to check, so to stop and slove the error first, thats y we are using this exit status "$?"" ---> if success it has 0 ; if failure not 0
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi


yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is SUCCESS"
fi