#! /bin/bash

echo "Input 5 numbers:"

counter=0
sum=0

while [[ counter -lt 5 ]]; do
    echo -n "> "
    read num

    sum=$(($sum + $num))
    counter=$(($counter + 1))
done

echo "The sum of your numbers is $sum"

exit 0
