#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" #/home/ec2-user/shell-logs/10-logs.sh.log


#check root access or not

if [ $USERID -ne 0 ]; then
echo "Please run this script with root access"
exit 1
fi
#first arg - what are you trying to install
#second arg ->exit code

VALIDATE(){

 if [ $2 -ne 0 ]; then
            echo "Installing $1 .......failed" 
            exit 1 
        else
            echo "Installing $1 is ...SUCESS"
        fi
}

# echo  "i am continuing....."
dnf list installed mysql &>> $LOGS_FILE

if  [ $? -eq 0 ]; then
echo " mysql is already installed ...SKIPPING"
else
        echo "installing MYSQL"
        dnf install mysql -y &>> $LOGS_FILE
        VALIDATE MYSQL $?
fi

# echo  "i am continuing....."

dnf list installed nginx -y &>> $LOGS_FILE
if  [ $? -eq 0 ]; then
echo " nginx is already installed ...SKIPPING"
else
        echo "installing nginx"
        dnf install nginx -y &>> $LOGS_FILE
       VALIDATE nginx $?
fi
