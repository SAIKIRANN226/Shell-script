#!/bin/bash

DATE=$(date) # DATE --> variable ; $(date) --> value

echo "Script started executing: $DATE" # You can also give like $DATE

result=$(ls -la)

echo "Files including hidden $result" > output.txt
ls -la >> output.txt

status=$?

echo "Status of the above command $status"


# How do you run commands in shellscript and take the output ? "${variable-name}" here flower braces is mandatory (or) Capturing the output of a command in a variable and also we can redirect output using > or >> for append