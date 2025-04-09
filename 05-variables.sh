#!/bin/bash

# For example if we want to connect to any external systems like DB we need username and password, if we give username and password outside the shell everybody can see that. So to make confidential we have "read command"

echo "Please enter your username:: "
read -s USERNAME # The value entered above will be automatically attached to USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD

# echo "Username is: $USERNAME, Password is: $PASSWORD" # I am priting just for validation, you should not print username and passwords in scripts, if you commentout this 11th line it will not print the echo