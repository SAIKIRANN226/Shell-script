#!/bin/bash

ID=$(id -u)

VALIDATE(){ 
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y
VALIDATE $? "Installing MySQL"

yum install git -y
VALIDATE $? "Installing GIT"



# Line 5: VALIDATE block is nothing but we are just validating wether it is installed or not, Here VALIDATE name is our wish, we can keep any name as function like saikiran()

# Line 6: Here $1 is exit status $? and $2 is Installing MySQL(what you are doing), so similarly for git also.

# Line 27: We have given arguments to the shellscript right ? similarly we need to give inputs to the functions also, here $? will get the mysql status (or) previous command exit status (or) passing the exit status of the previous command and followed by what you do, that is "Installing MySQL", so here you are passing two(Inputs) 1.exit status 2.what you do, we can retrive this by giving $1 and $2 in the validate function.
