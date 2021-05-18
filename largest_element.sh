#!/bin/bash

echo -n "Enter the length of an array: "
read length

echo "Enter the array elements: "

for ((i=0; i<$length; i++)) 
do
    read array[i] 
done
echo -e

for ((i=0; i<$length; i++))
do
    echo -n "$((array[i])) "
done
echo -e

max=${array[0]}

for ((i=0; i<$length; i++))
do
    if (( $max < ${array[$i]} ))
    then 
	max=${array[$i]}
    fi
done

echo -n largest no. is: $max
echo -e
