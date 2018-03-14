#!/bin/bash

make clean

make build

if [ $? -ne 0 ]; then
    echo "Compilation failed ☠️"
    exit 1
fi

echo "Running synchronous..."
TSEQ=$( { time -f%e ./prac_s $1 > ./output/synchronous_$1.txt; } 2>&1 )
echo "Time: $TSEQ"

echo "Running parallel..."
TPAR=$( { time -f%e ./prac_p $1 > ./output/parallel_$1.txt; } 2>&1 )
echo "Time: $TPAR"

diff ./output/synchronous_$1.txt ./output/parallel_$1.txt > /dev/null

if [ $? -eq 0 ]; then
    echo "OK 👍"
else
    echo "FAIL ☠️"
fi

echo -n "Speedup: "
echo "$TSEQ / $TPAR" | bc -l
