#! /bin/bash

file=$1

if test -d $2 
then
    dir="$2"
else
    dir="."
fi

if test -f "$dir/$file"
then 
    echo "The file type is ${file##*.}"
else 
    echo "No such file or directory."
fi
