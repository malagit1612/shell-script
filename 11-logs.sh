#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
O="\e[30m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executed at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){

if [ $1 -ne 0 ]
then 
    echo -e "ERROR:: $2 ... $R failed $N"
    exit 1
else
    echo -e "$2 .... $G success $N" 
fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR::Please run this script with root access $N"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi  # fi means reverse of id, indicating condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MySQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"