#!/bin/bash

NUMBER=$1

#gt -greater than
#lt -lessthan
#eq -equal 
#ne-not equal
#ge -greater thanor equal to 
#le -less than or equal


if [ $NUMBER -ge 20 ]; then
echo "Given Number $NUMBER is greater than or equal to 20"
else
echo "Given Number $NUMBER is less than 20"
fi
