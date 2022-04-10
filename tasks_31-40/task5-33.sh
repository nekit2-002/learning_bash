#! /bin/bash

stop="end"
echo "Input your word:"
echo -n "> "
output=
read word

while [[ $word != $stop ]]; do
    output+="$word "
    echo -n "> "
    read word
done

IFS=' ' read -ra array <<< "$output"

IFS=$'\n' sorted=($(sort <<<"${array[*]}"))

echo "The alphabetical order of your words is:"

for w in ${sorted[@]}; do
    echo -n "$w "
done

echo

exit 0
