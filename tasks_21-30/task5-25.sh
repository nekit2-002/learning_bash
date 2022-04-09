#! /bin/bash

echo "Input the number to set variable Y:"
echo -n "> "
read Y

if [[ $Y -lt 7 ]]; then 
    echo "Your number is less then 7."
    exit 0
fi

res=$(($Y - 7))

echo "Your number is greater than 7 on $res"

exit 0