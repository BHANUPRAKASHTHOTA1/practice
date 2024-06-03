#!/bin/bash
SCRIPT_NAME=$0
echo "$SCRIPT_NAME"
NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "$NUMBER is greater than 10"

else
    echo "$NUMBER is not greater than 10"

fi 
