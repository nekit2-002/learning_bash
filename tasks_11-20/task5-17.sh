#! /bin/bash

echo "The script name is $0"
echo "The number of arguements is $#"

echo

count=1
for arg in "$@" 
do
    echo "The $count argument is $arg"
    count=$(($count + 1))
    len=${#arg}
    echo "The number of symbols in arg is $len"
    echo
done 

exit 0