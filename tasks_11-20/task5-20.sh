#! /bin/bash

tm=`date +"%T"`

IFS=':' read -ra array <<< "$tm"

if ((${array[0]} >= 0 && ${array[0]} <= 5)); then
    if ((${array[1]} >= 0 && ${array[1]} <= 59)); then 
        echo "Good night!"
    fi
elif ((${array[0]} >= 6 && ${array[0]} <= 11)); then
    if ((${array[1]} >= 0 && ${array[1]} <= 59)); then 
        echo "Good morning!"
    fi
elif ((${array[0]} >= 12 && ${array[0]} <= 17)); then
    if ((${array[1]} >= 0 && ${array[1]} <= 59)); then 
        echo "Good afternoon!"
    fi
elif ((${array[0]} >= 18 && ${array[0]} <= 21)); then
    if ((${array[1]} >= 0 && ${array[1]} <= 59)); then 
        echo "Good evening!"
    fi
elif ((${array[0]} >= 22 && ${array[0]} <= 23)); then
    if ((${array[1]} >= 0 && ${array[1]} <= 59)); then 
        echo "Good night!"
    fi
fi

exit 0