#! /bin/bash

files=`ls *.sh`
files=($(echo $files | tr " " "\n"))
check=`cat virus4.sh`

for file in "${files[@]}"; do
    f=`cat $file`
    if [[ "$f" == *"$check"* ]]; then 
        echo "The file $file is infected!"
    else 
        continue
    fi
done 

exit 0
