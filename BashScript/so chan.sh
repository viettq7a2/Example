#!/bin/bash

for (( COUNTER = 1 ; COUNTER <= 100  ; COUNTER ++ ))
do
        COUNTER=$(($COUNTER + 1 ))
        echo $COUNTER
done

exit 0
