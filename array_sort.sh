#!/bin/bash

echo -n "Enter the length of an array: "
read length

if [ $length -lt 5 ]
then
    echo "Please Enter atleast 5 elements"
else
    echo "Enter the array elements: "

    for ((i=0; i<$length; i++)) 
    do
	read array[i]
    done
fi
echo -e

echo -n "You entered: "
for ((i=0; i<$length; i++))
do
    echo -n "$((array[i])) "
done
echo -e

for ((i=0; i<$length; i++))
do
    for ((j=$(($i+1)); j<$length; j++))
    do
	if (( ${array[$i]} > ${array[$j]} ))
	then
	    temp=${array[$i]}
	    array[$i]=${array[$j]}
	    array[$j]=$temp 
	fi
    done
done

echo -n "Sorted array: "
for ((i=0; i<$length; i++))
do
    echo -n "$((array[i])) "
done
echo -e 
