#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run this script with root user access"
exit 1
fi

echo "Installing Nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
echo "Installing Nginx failed"
exit 1
else
echo "Installing Nginx Success"
fi

echo "Installing MySQL"
dnf install mysql -y
if [ $? -ne 0 ]; then
echo "Installing mysql failed"
exit 1
else
echo "Installing mysql Success"
fi

echo "Installing Nodejs"
dnf install nodejs -y
if [ $? -ne 0 ]; then
echo "Installing nodejs failed"
exit 1
else
echo "Installing nodejs Success"
fi