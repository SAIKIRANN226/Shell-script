#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') # I dont want files with tmp and File | ---> means "or"
DISK_THRESHOLD=1 # 1 is nothing but 1% as of now we dont have used 70% so we are using 1% just for practice
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage <br>" # += means it will append the new line instead of overwriting and in shell script new line charater is \n and in html is <br>
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

# echo "$message" | mail -s "High Disk Usage" info@joindevops.com

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "info@joindevops.com" "ALERT High Disk Usage"