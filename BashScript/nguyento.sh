#!/bin/bash

clear
echo "--- Day la chuong trinh kiem tra so nguyen to ---"
echo -n "Nhap so can kiem tra: "
read num
echo "-------------"

if [ $num -lt 2 ]
then
    echo " $num khong phai la so nguyen to "
else
    if [[ ( $(( $num % 1 )) -eq 0 ) && ( $(( $num % $num )) -eq 0 )]]
    then
        for (( i=2 ; i <= $(($num/2)) ; i++ ))
        do
            if [ $(( $num % $i )) -eq 0 ]
            then
                echo "$num khong phai la so nguyen to"
            exit 0
            fi
        done
        echo "$num la so nguyen to"
    fi
fi

exit 0