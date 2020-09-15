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

mobilePattern="^[0-9]{2}[ ][0-9]{10}$"
read -p " Enter Your Mobile Number : +" mobileNumber
if [[ $mobileNumber =~ $mobilePattern ]]
then
        echo "Valid Mobile Number"
else
        echo "Invalid Mobile Number"
fi

passwordPattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,}$"
echo -e "Note : Password must fulfill following conditions.\n1. Minimum 8 Characters\n2. Atleast 1 Upper Case\n3. Atleast 1 Numeric Value\n4. Only 1 Special Character"
read -p " Enter Your Password : " password
if [[ $password =~ $passwordPattern ]]
then
        echo "Valid Password"
else
        echo "Invalid Password"
fi
