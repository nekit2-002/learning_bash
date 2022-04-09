#! /bin/bash

echo "Input your number:"
echo -n "> "

read Y

if [[ $Y -gt 7 ]]
then 
    echo "$Y is greater than 7"
else 
    echo "$Y is not greater than 7"
fi