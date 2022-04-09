#! /bin/bash

echo "Input three your names:"
read names
array=($(echo $names | tr " " "\n"))

len=0
for name in "${array[@]}"; do
    len=$(($len + 1))
done

if [[ len -gt 3 ]]; then 
    echo "There are $(($len - 3)) extra names!"
    start=3

    while [[ $start -lt $len ]]; do
        echo "extra> ${array[start]}"
        start=$(($start + 1))
    done

    exit 0
fi

printf '%s\n' "${array[@]}" | sort

exit 0