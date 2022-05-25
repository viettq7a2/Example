#!/bin/bash

clear
echo -n "Vui long nhap so luong so muon tinh tong: "
read N

tong () {
S=0
for (( i=1 ; i <= N ; i++ ))
do
    S=$(( $S + $i ))
done
echo "Tong S la: $S"
}

if [ $N -gt 0 ]
then
    tong
else
    while [ $N -le 0 ]
    do
        echo -n "So N khong hop le, vui long nhap lai so N: "
        read N
    done
    tong
fi

exit 0