#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " ERROR :: Please run the below command with sudo access"
else
    echo "You are running on sudo access"

fi 

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of my sql is success"

else
    echo " Installation of my sql is unsuccess"

fi 

