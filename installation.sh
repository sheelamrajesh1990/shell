#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run this script with root user access"
exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
echo " $2 Installing failed"
exit 1
else
echo "$2 Installing Success"
fi    
}


dnf install nginx -y
VALIDATE  $? "Installing Nginx"

#echo "Installing MySQL"
dnf install mysql -y
VALIDATE  $? "Installing MySQL"

#echo "Installing Nodejs"
dnf install nodejs -y
VALIDATE  $? "Installing node.js"
