#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs
DATE=$(date +%F:%H:%M:%S )
LOGDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +4)
echo "script started executing at $DATE" &>>$LOGFILE
while read line
do
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line

done <<< $FILES_TO_DELETE
