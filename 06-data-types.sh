#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "How many args passed:: $#"

echo "All args passed:: $@"

echo "Script name:: $0"

# Int,float,string etc. In shellscript data type is not that much important, it will automatically consider which data type is. Usage in server ---> "sh <script-name> 100 200"