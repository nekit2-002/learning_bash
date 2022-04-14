#! /bin/bash

files=`ls`
files=($(echo $files | tr " " "\n"))

for file in "${files[@]}"; do 
    for chr in $@; do
        if [[ "$file" == *"$chr"* ]]; then 
            wc -l "$file"
        else 
            continue
        fi
    done
done

exit 0