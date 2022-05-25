#!/bin/bash

clear

check () {
    if [[ $x -le 0 || $y -le 0 ]]
    then
        echo -n "Phan so khong hop le, vui long nhap lai: "
        read x; read y
    fi
    echo "Phan so thu $i la: $x/$y"
}

while true
do
    echo -n "Nhap so luong phan so muon tinh tong: "
    read N
    if [[ $N -le 2 && $N -gt 0 ]]
    then
        S=0
        for (( i=1 ; i<=N ; i++ ))
        do
            read x; read y
            check
            S=`echo "$S + $x/$y" | bc -l`
        done
        echo -n "Tong $N phan so da nhap la: "
        printf "%.3f\n" $S
    else
        S=0
        for (( i=1 ; i<=2; i++ ))
        do  
            read x; read y
            check
            S=`echo "$S + $x/$y" | bc -l`
        done
        a=1
        for (( i=3 ; i<=N ; i++ ))
        do
            read x; read y
            check
            a=$(( $a * -1 ))
            b=$(( $a * $x ))
            S=`echo "$S + $b/$y" | bc -l`
        done
        echo -n "Tong $N phan so da nhap la: "
        printf "%.3f\n" $S
    fi
done           