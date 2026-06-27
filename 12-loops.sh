#!/bin/bash


USERID=$(id -u)

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

for package in $@
do
 echo "installing $package" 
done 



