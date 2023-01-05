#!/usr/bin/env bash

runs=0
while [ true ]; do
    ./random.sh 1>>/tmp/solve-out.txt 2>>/tmp/solve-error.txt
    ((++runs))
    if [ -s /tmp/solve-error.txt ]; then
        break
    fi
done
cat /tmp/solve-out.txt /tmp/solve-error.txt
rm /tmp/solve-{out,error}.txt
echo "The command took $runs runs to throw an error."
