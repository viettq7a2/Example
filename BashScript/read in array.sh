#!/bin/bash

i=0
while read x
do
    country[i]=$x
    #echo "$x"
    ((i++))
done
echo "${country[@]}"