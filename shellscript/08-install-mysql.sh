#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR :: Please run the below command with sudo access"
    exit 1
# else
#     echo "You are running on sudo access"

fi 

echo "user id is : #USERID"

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of my sql is success"
    exit 1

else
    echo " Installation of my sql is unsuccess"

fi 

