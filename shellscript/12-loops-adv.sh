#!/bin/bash
DATE=$(date +%F)
LOGDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR::Please run this script with Root access $N"
    exit 1
fi

validations(){
    if [ $1 -ne 0 ];
    then
        echo -e "Installng $2 ..... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 .... $G SUCCESS $N"
    fi
}


for i in $@
do
    yum list installed $i &>>LOGFILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed,let's installed"
        yum install $i -y &>>LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi

done


# improvements
# implement log files
# implement colors
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print yellow color
# if installed just print package is alredy installed, it should not run install command