#!/bin/bash

clear
echo "Enter Size(N)"
read N

i=1
j=1
max=0

echo "Enter Numbers"
while [ $i -le $N ]
do
    echo "Number $j"
    read num
    if [ $i -eq 1 ]  #set first number as max
    then
        max=$num
    else             #from number 2 update max if the num > max.
        if [ $num -gt $max ]
        then
            max=$num
        fi
    fi
    i=$(( $i + 1 ))  #increment i by 1
    j=$(( $j + 1 ))
done

echo "Max number is: $max"