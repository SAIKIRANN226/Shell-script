#!/bin/bash

DATE=$(date) # DATE --> variable ; $(date) --> value

echo "Script started executing: $DATE"

result=$(ls -la)

echo "Files including hidden $result" > output.txt
ls -la >> output.txt

status=$?

echo "Status of the above command $status"


# How do you capture the output of any linux command in a variable ? DATE=$(date) and also we can redirect the output using > or >> for append