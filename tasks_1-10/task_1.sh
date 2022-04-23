#! /bin/bash

# To run the script on the background 
# type ./task_1.sh &

#  To stop the program run 
#  kill PID

n=0
while true; do
    echo This is the $n th iteration.
    n=$(($n + 1))
    echo -e "The PID of the process is $$ \n"
    sleep 1
done
