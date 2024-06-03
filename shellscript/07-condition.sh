#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
echo "$SCRIPT_NAME"
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
NUMBER=$1

if [ $NUMBER -gt 10 ] 
then
    echo "$NUMBER is greater than 10" &>>LOGFILE

else
    echo "$NUMBER is not greater than 10" &>>LOGFILE

fi 
