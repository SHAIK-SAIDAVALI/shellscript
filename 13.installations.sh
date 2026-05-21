#!/bin/bash

USERID=$( id -u )

if [ $USERID -ne 0 ]; then
    echo "Error:: Please proceed with root previleges"
    exit 1
    
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo " nginx installation is failure"
else
    echo "Nginx installation is successfull"
fi
