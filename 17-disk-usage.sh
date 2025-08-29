#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') # vE means, i dont want files with tmp and File | ---> Pipe symbol is "or" We have different types of file systems when you enter command "df -hT" but we want only xfs type because those are related to disks, so we do reverse search which is "grep -vE 'tmp|File'" Here v --> I dont want except files tmp and File and E --> Expressions
DISK_THRESHOLD=1 # 1 is nothing but 1% as of now, we dint used 70% so we are keeping just 1% for practice
message="" # Empty

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}') # Nothing but disks names like /dev/xvda1 and /dev/xvdf
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage <br>" # += means it will append the new line instead of overwriting and in shell script new line charater is \n and in html it is <br>
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

# echo "$message" | mail -s "High Disk Usage" info@joindevops.com, This line is from gmail.MD document, sometimes in our company we dont have access, linux team will configure mail.sh, so we can call them by using below command.

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "info@joindevops.com" "ALERT High Disk Usage"