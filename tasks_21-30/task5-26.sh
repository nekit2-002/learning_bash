#! /bin/bash

while [ -n "$1" ]
do
    case "$1" in
        -d) date ;;
        -w) who -u -H ;;
        -l) ls . ;;
        *) 
            echo "Only -d, -w and -l options are avaluable." 
            echo "Run the script with -d oprtion to display the current date."
            echo "Run the script with -w oprtion to display the active users."
            echo "Run the script with -l oprtion to display the list of the files in this directory."
        ;;
    esac

    shift
done

exit 0