#! /bin/bash

for file in "$@"; do
    if test -d $file; then
        echo "File $file exists and it is a directory."
    elif test -L $file; then 
        echo "File $file exists and it is symbolic reference."
    elif test -f $file; then 
        echo "File $file exists and it is an ordinary ${file##*.} file."
    elif test -p $file; then
        echo "File $file exists and it is a pipe channel."
    else 
        echo "No such file or dirctory."
    fi
done

exit 0