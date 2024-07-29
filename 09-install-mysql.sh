#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR::Please run this script with root access"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi  # fi means reverse of if, indicating condition end

yum install mysqlll -y

if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing MySQL is failed"
    exit 1
else
    echo "INITIALISING MySQL is success" 
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing GIT is failed"
    exit 1
else
    echo "INITIALISING GIT is success" 
fi
