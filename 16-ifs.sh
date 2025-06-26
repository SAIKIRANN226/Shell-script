#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ] # ! Denotes opposite, f means checking wether the file is there or not ?
then
    echo -e "$R Source directory: $file does not exists. $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path # You can search in google "/etc/passwd format". We can keep anything as a internal field separator like comma,fullstop,slash etc.
do
    echo "username: $username"
    echo "user ID: $user_id"
    echo "User Full name: $user_fullname"
done < $file

# If you enter "cat /etc/passwd" you will get all the user information which is not in good format, So you need to read this properly by using while loop with Internal field separator(IFS)