#! /bin/bash

echo "Input your $1 numbers:"

sum=0
for ((i=0; i < $1; i++)); do
    echo -n "> "
    read num 

    sum=$(($sum + $num))
done


echo "The sum of your numbers is $sum"

exit 0
