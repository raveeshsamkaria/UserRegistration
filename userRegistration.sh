#!/bin/bash
echo ">---< User Registration >---<"

namePattern="^[A-Z]{1}[a-z]{2,}$"
read -p " Enter Your First Name : " firstName
if [[ $firstName =~ $namePattern ]]
then
        echo "Valid First Name"
else
        echo "Invalid First Name"
fi

read -p " Enter Your Last Name : " lastName
if [[ $lastName =~ $namePattern ]]
then
        echo "Valid Last Name"
else
        echo "Invalid Last Name"
fi

emailPattern="^[A-Za-z0-9]+([._+-][a-zA-Z0-9]+)*@[A-Za-z0-9]+.[A-Za-z]{2,4}([.][A-Za-z]{2})$"
read -p " Enter Your Email ID : " email
if [[ $email =~ $emailPattern ]]
then
        echo "Valid Email ID"
else
        echo "Invalid Email ID"
fi

