#!/bin/bash

i=1
while read line
do
    if [ $i -eq 1 ]
    then   
        echo -n "$line"
        ((i++))
    elif [ $i -eq 2 ]
    then
        echo -en "\t$line"
        ((i++))
    else 
        echo -e "\t$line"
        i=1
    fi
done