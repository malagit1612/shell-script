#!/bin/bash
echo "please enter your username"
read -s USERNAME  # the vvalue entered above will be automatically attatched to username variable

echo "please enter your password"
read -s PASSWORD

echo "Username is: $USERNAME, Password is: $PASSWORD" # I am printing just for validation, you should not print username and password in scripts