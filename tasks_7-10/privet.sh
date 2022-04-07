#!/bin/bash
banner hello
MYNAME=$USER

echo -e "MYNAME is $MYNAME\n"

date +"Time: %T%nDate: %D%n"
echo -e "Logged users are:"
who -q
