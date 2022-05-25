#!/bin/bash

clear
S=0
tong () {
if [ $N -le 2 ]
then
    for (( i=1 ; i <= N ; i++ ))
    do
        S=`echo "$S + 1/$i" | bc -l`
    done
    echo -n "Tong cac phan so la: "
    printf "%.3f\n" $(echo "$S" | bc -l)
elif [ $N -gt 2 ]
then
    x=1
    for (( i=3 ; i<=N ; i++ ))
    do
        S=`echo "1/1 + 1/2" | bc -l`
        x=$(( $x * -1 ))
        y=$(( $x * $i ))
        S=`echo "$S + 1/$y" | bc -l`
    done
    echo -n "Tong cac phan so la: "
    printf "%.3f\n" $(echo "$S" | bc -l)
fi
}

while true
do
    echo -n "Vui long nhap so luong phan so muon tinh tong: "
    read N
    if [ $N = "n" ] 
    then
        break
    fi
    tong
    if [ $N -le 0 ]
    then
        echo -n "So khong hop le, vui long nhap lai: "
        read N
    fi
done
