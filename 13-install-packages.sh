#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
O="\e[30m"

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR::Please run this script with root access $N"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi  # fi means reverse of id, indicating condition end

echo "All arguments passed $@"