#!/bin/bash
USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 .... FAIL"
        exit 1

    else
        echo "$2 .... SUCCESS"

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

VALIDATE $? "Installing MySql"

yum install postfix -y
VALIDATE $? "Installing PostFix"