#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi 


yum install mysql -y

if [ $? -ne 0 ] 
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



# Line 3: This is a command substitution in shell scripting. Nothing but capturing the output of a command in a variable

# Line 8: You can give other than 0 number (any-number) because, clearly we can see above line is error, so give otherthan 0

# Line 14: -y should be given otherwise, program will wait for our input "yes or no"

# Line 16: The lines from 16-22 is to check even after installing myql, we need to check wether it is installed properly or not ? The only disadvantage in shell is, it wont stop even if it is facing any error, so it is our responsibility to check, so stop and slove the error first, thats y we are using this exit status "$?"" ---> if success it has 0 ; if failure not 0