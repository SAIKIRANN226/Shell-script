#!/bin/bash

ID=$(id -u)

VALIDATE(){ # VALIDATE block is nothing but we are just validating wether it is installed or not, Here VALIDATE name is our wish we can keep any name as function 
    if [ $1 -ne 0 ]   # Here $1 is exit status $? and $2 is installing mysql(what you are doing), so similarly for git also
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
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE $? "Installing MySQL"   # We have given arguments to the shellscript, similarly we need to give inputs to the functions also, here $? will get the mysql previous exit status or passing the exit status of the previous command and followed by what did you do that is "Installing MySQL" , so here you are passing two args(inputs) 1.exit status 2.what did you do, we can retrive this by giving $1 and $2

yum install git -y

VALIDATE $? "Installing GIT"  # $? exit status of previous command

