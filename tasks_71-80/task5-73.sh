#! /bin/bash

declare -A phone_base

echo "Input the option you wanna use:"

echo "Input w to start adding the user and their phone number."
echo "Input s to start search of the phone number by user name."
echo "Input r to remove user and his phone number from the rhone book."
echo "Input c to change user's phone number."
echo "Input q to quit."

read choice

while [[ $choice != q ]]; do
    case $choice in 
        w)
            echo "Input the user name:"
            echo -n "> "
            read name
            echo "Input the phone number:"
            echo -n "> "
            read number

            phone_base+=(["$name"]="$number")
        ;;
        s)
            echo "Input the user you want to search."
            read user
            for usr in ${!phone_base[@]}; do
                if [[ "$user" == "$usr" ]]; then
                    echo "The "$user"'s phone number is ${phone_base[$user]}"
                    break
                else 
                    echo "There is no such user in the phone book!"
                fi
            done
        ;;
        r)
            echo "Input the user you wanna remove:"
            echo -n "> "
            read name

            unset phone_base["$name"]
        ;;
        c)
            echo "Input the user you wanna change the number of."
            echo -n "> "
            read name

            echo "Input new number:"
            echo -n "> "
            read number
            phone_base["$name"]="$number"
        ;;
        q)
            exit 0
        ;;
    esac

    echo
    echo "The current phone list is:"
    for key in "${!phone_base[@]}"; do echo "$key => ${phone_base[$key]}"; done
    echo
    echo "Input the option you wanna use:"
    read choice
done

exit 0