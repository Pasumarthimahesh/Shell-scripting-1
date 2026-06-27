#!/bin/bash

USERID=$(id -u)

#check root access or not

if [ $USERID -ne 0 ]; then
echo "Please run this script with root access"
exit 1
fi

# echo  "i am continuing....."

echo "installing MYSQL"
dnf install mysqlfff -y
if [ $? -ne 0 ]; then
echo "Installing MYSQL .......failed" 
exit 1 
else
echo "Installing MYSQL is ...SUCESS"
fi