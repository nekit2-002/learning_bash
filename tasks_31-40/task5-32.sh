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

echo "Your words are:"
echo $output

exit 0