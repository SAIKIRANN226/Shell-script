#!/bin/bash

DATE=$(date) # DATE --> variable ; $(date) --> value

echo "Script started executing: $DATE" # You can also give like $DATE

result=$(ls -la)

echo "Files including hidden $result"

status=$?

echo "Status of the above command $status"


# How do you run commands in shellscript and take the output ? "${variable-name}" here flower braces is mandatory