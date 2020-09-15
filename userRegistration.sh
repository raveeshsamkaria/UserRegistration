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
