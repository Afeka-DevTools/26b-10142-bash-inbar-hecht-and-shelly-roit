#!bin/bash
if [ -z "$1" ]; then
    exit 1
fi

FILE = $1

if [ ! -f "$FILE" ]; then
    exit 1
fi

sort "$FILE" > sorted_output.txt