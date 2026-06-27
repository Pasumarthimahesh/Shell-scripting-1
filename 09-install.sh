#!/bin/bash

USERID=$(id -u)

#check root access or not

if [ $USERID -ne 0 ]; then
echo "Please run this script with root access"
exit 1
fi

# echo  "i am continuing....."

dnf list installed mysql

if  [ $? -eq 0 ]; then
echo " mysql is already installed ...SKIPPING"
else
   echo "installing MYSQL"
     dnf install mysql -y
     if [ $? -ne 0 ]; then
     echo "Installing MYSQL .......failed" 
    exit 1 
     else
     echo "Installing MYSQL is ...SUCESS"
     fi
fi
