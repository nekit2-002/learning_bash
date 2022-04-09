#! /bin/bash

args[0]=$1 args[1]=$2
args[2]=$3
args[3]=$4
args[4]=$5
args[5]=$6
args[6]=$7
args[7]=$8
args[8]=$9
args[9]=${10}
args[10]=${11}
args[11]=${12}
for ((i=11; i >= 0; i--))
do
    echo -n -e "${args[i]}\t"
done
echo 

exit 0