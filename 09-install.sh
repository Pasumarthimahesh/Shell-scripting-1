 #!/bin/bash

 USERID=$(id -u)

 #check root user or not

 if [ $USERID -ne 0 ]; then
 echo "please run this script with root cause"
 exit 1
 fi

 # echo " i am continuing.."
dnf list installed mysql

if [ $? -eq 0 ]; then 
echo "Mysql is already installed ... SKIPPING"
else
 echo "installing Mysql"
 dnf install mysql -y

if [ $? -ne 0 ]; then 
echo "Installing MYSQL is ...Failed"
exit 1
else 
echo "Installing Mysql is ...SUCESS"
fi 
fi