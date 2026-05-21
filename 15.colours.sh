#!/bin/bash


USERID=$( id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "Error:: Please proceed with root previleges"
    exit 1
    
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        #echo -e "installation of $2  is  $R failure $N"
        echo -e "Installing $2 ... $R FAILURE $N"
    else
        echo "$2 installation is successfull"
    fi
}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mysql -y
VALIDATE $? "mysql"

dnf install python3 -y
VALIDATE $? "python3"

