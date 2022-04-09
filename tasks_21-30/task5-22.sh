#! /bin/bash

echo "Input your username:"
echo -n "> "
read name

echo $name

if [[ "$name" == "$USER" ]]; then
    echo "Username is correct, the full ~ name is $HOME"
    exit 0
fi

echo "Error: incompatible username!"

exit 0