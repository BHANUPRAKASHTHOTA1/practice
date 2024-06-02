#!/bin/bash
USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation .... FAIL"
        exit 1

    else
        echo "Installation .... SUCCESS"

    fi 

}

if [ $USERID -ne 0 ]
then
    echo "ERROR :: Please run the below command with sudo access"
    exit 1
else
    echo "You are running on sudo access"

fi 



yum install mysql -y

VALIDATE $? 

yum install postfix -y
VALIDATE $?