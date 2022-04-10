#! /bin/bash

cat "$1" | sort | uniq -cd

exit 0

