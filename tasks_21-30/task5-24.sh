#! /bin/bash

if [[ ! -f "$2" ]]; then
    > "$2"
    cp "$1" "$2"
else 
    echo "Input r to copy the contents of file "$1" to file "$2" with rewriting the file "$2""
    echo "Input e to write the contents of the file "$1" to the end of the file "$2""
    read choice
    case $choice in
        r) 
            cat "$1" | tee > "$2"
        ;;
        e)
            cat "$1" | tee >> "$2"
        ;;
        *) 
            echo "No such option provided"
        ;;
    esac
fi

exit 0