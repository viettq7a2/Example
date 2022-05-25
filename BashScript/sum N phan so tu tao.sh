#!/bin/bash

clear
echo -n "Nhap so luong phan so muon tinh tong: "
read N

x=1; y=1; z=1
S=0
if [[ $x -gt 0 && $y -gt 0 ]]
then
    for (( i=1 ; i<=N ; i++ ))
    do
        read x; read y
        while [[ $x -le 0 || $y -le 0 ]]
        do
            echo "---- Phan so khong hop le, nhap lai phan so thu $z ----"
            read x; read y
        done
        echo "===> Phan so thu $z: $x/$y" 
        S=`echo "$S + $x/$y" | bc -l` 
        ((z++))
    done
    echo -n "===> Tong cac phan so la: "
    printf "%.3f\n" $(echo "$S" | bc -l )
fi
exit 0