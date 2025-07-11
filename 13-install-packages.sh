#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"  

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILED $N"
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
else
    echo "You are root user"
fi


for package in $@ 
do
    yum list installed $package &>> $LOGFILE # Check installed or not
    if [ $? -ne 0 ] # If not installed
    then
        yum install $package -y &>> $LOGFILE # Install the package
        VALIDATE $? "Installation of $package" # Validate
    else
        echo -e "$package is already installed ... $Y SKIPPING $N"
    fi
done



# echo "All arguments passed: $@" ---> Example of giving arguments in the server ---> 13-install-packages.sh git nginx mysql postfix net-tools ---> When you give arguments as per your requirement, it will be running in the loop

# Package=git for first time then followed by nginx,mysql,postfix,net-tools etc. Thats why we put "$@" nothing but all arguments passed to the script

# You can give the location of saving the log where ever you want, but for practice here we are giving in tmp and $0 ---> Scriptname
