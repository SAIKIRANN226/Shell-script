#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
   echo "Given number $NUMBER is greater than 100"
else
   echo "Given number $NUMBER is not greater than 100"
fi

# fi is the opposite of the if condition that means condition end
# $NUMBER > 100    ----> greater than
# $NUMBER -gt 100  ----> greater than 
# $NUMBER -lt 100  ----> less than
# $NUMBER -ge 100  ----> greater than or equal to
# $NUMBER -le 100  ----> less than or equal to 