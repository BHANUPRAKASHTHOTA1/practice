#!/bin/bash
DATE=$(date +%F -%H-%M-%s)
SCRIPT_NAME = $0
LOG_FILE=\tmp\$SCRIPT_NAME-$DATE.log
R=\e[31m
G=\e[32m
N=\e[0m

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 .... $R FAIL $N"
        exit 1

    else
        echo "$2 .... $G SUCCESS $N"

    fi 

}
USERID=$(id -u)

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