#!/bin/bash
 
clear
echo -n "Enter N: "
read N
i=1
S=0
echo "Enter numbers: "
if [[ ( $N -ge 1 ) && ( $N -le 500 ) && ( $x -ge -10000 ) && ( $x -le 10000 ) ]]
then
    while [ $i -le $N ]
    do
        read x
        S=$(( $S + $x ))
        i=$(( $i + 1 ))
    done
    echo "Tong S: $S"
    echo -n "Trung binh cong la: "
    printf "%0.3f\n" $(echo "scale=5; $S / $N" | bc -l)
else
    echo " Gia tri x va N khong hop le"
fi