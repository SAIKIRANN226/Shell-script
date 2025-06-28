#!/bin/bash

# For example, if we want to connect to any external systems like DB, we need username and password, if we give username and password outside the shellscript everybody can see that. So to make confidential we have "read -s" command

echo "Please enter your Username:: "
read -s USERNAME # The value entered above will be automatically attached to the USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD

# echo "Username is: $USERNAME, Password is: $PASSWORD" # I am priting just for validation, you should not print username and passwords in scripts, if you commentout this 11th line it will not print the echo.

# For example How can you connect to a database server ?
# mysql -s Servername -U username -P password