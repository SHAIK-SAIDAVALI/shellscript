#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please proceed further with root acess"
    exit 1
fi

dnf install nginx -y

if [ $? -ne 0  ]; then
    echo "Error:: installation failed"
    exit 1
else
    echo "success" 

fi

