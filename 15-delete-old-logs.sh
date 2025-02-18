#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs" # Creating temporory directory as "shellscript-logs" in /tmp folder

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! Denotes opposite, We need to check wether the directory already exists or not ?, Here -D is Directory and -f is File
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log") # Command to find a files morethan 14 days old

while IFS= read -r line # This will read output line by line, IFS ---> Internal Field separator
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE  # <<< Less than symbol denotes input, that means we are giving output of FILES_TO_DELETE as input to while loop to read every line
