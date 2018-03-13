#!/bin/bash

make clean

make build

echo "Running synchronous..."
time ./prac_s $1 > ./output/synchronous_$1.txt

echo "Running parallel..."
time ./prac_p $1 > ./output/parallel_$1.txt

diff ./output/synchronous_$1.txt ./output/parallel_$1.txt

if [ $? -eq 0 ]; then
    echo "OK 👍"
else
    echo "FAIL ☠️"
fi
