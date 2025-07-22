#!/bin/bash

read -p "Enter your UserName(must be UPPERCASE, no Space):" username

if [[ -z "$username" ]];
then
	echo"user cannot be empty!"
	exit 1
fi

if ! [[ "username" =~ [A-Z]+$ ]];
then
	echo "username must be  UPPERCASE !"
	exit 1
fi

if [[ "username" =~ \ ]];
then
	echo "username must not contain spaces!"
	exit 1
fi

echo "username '$username' accepted!"


