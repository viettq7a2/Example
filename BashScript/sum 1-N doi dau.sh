#!/bin/bash

clear
echo -n "Vui long nhap so luong so muon tinh tong: "
read N

tong1 () {
for (( i=1 ; i <= N ; i++ ))
do
    S=$(( $S + $i ))
done
}

tong2 () {
S=3
for (( i=3 ; i <= N ; i++ ))
do
    x=$(( $x * -1 ))
    y=$(( $x * $i ))
    S=$(( $S + $y ))
done
}

cal () {
if [ $N -le 2 ]
then
    tong1
elif [ $N -gt 2 ]
then
    tong2
fi
echo "Tong S la: $S"
}

x=1;S=0
if [ $N -gt 0 ]
then
    cal
else
    while [ $N -le 0 ]
    do
        echo -n "So N khong hop le, vui long nhap lai so N: "
        read N
    done
    cal
fi