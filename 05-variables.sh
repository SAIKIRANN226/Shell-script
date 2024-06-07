#!/bin/bash

# for example if we want to connect to any external systems like DB we need username and password,if we give outside the shell everybody can see that.so for the confidential we have "read command"

echo "Please enter your username:: "
read -s USERNAME #the value entered above will be automatically atteched to USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD

echo "Username is: $USERNAME, Password is: $PASSWORD" # I am priting just for validation, you should not print username and passwords in scripts