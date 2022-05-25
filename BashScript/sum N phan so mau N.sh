#!/bin/bash

clear
echo -n "Vui long nhap so luong phan so muon tinh tong: "
read N

tong () {
for (( i=1 ; i <= N ; i++ ))
do
    S=`echo "$S + 1/$i" | bc -l`
done
echo -n "Tong cac phan so la: "
printf "%.3f\n" $(echo "$S" | bc -l)
}

S=0
if [ $N -gt 0 ]
then
    tong
else   
    while [ $N -le 0 ]
    do
        echo -n "Vui long nhap lai, so khong thoa man: "
        read N
    done
    tong
fi