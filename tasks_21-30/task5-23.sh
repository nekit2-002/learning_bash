#! /bin/bash

echo "Input y if your want to display the contents of this directory."
echo "Else input n."
echo -n "> "

read agree

if [[ $agree == "y" ]]; then 
    echo
    ls .
else 
    echo "Input the path of the directory you want to view:"
    echo -n "> "
    read dir
    echo 
    if [[ ! -d "$dir" ]]; then 
        echo "Error: No such file or directory!"
    else
        ls $dir
    fi
fi

exit 0