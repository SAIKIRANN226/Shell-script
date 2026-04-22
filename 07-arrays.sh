#!/bin/bash

FRUITS=("Apple" "Banana" "Mango")

echo "First fruit is: ${FRUITS[0]}"

echo "Second fruit is: ${FRUITS[1]}"

echo "Third fruit is: ${FRUITS[2]}"

echo "All fruits: ${FRUITS[@]}"


# Array index will start from 0,1,2,3.... We have notation for "ALL" that is "@"