#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]   # here $1 is exit status and $2 is installing mysql,so similarly for git alsi $1=exit status,$2=git
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

VALIDATE $? "Installing MySQL"   # we give args to the shellscript similarly we need to give inputs to the functions also

yum install git -y

VALIDATE $? "Installing GIT"  # $? exit status of previous command

