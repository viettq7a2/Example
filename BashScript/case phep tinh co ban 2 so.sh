#!/bin/bash

clear
echo -n "Nhap phep tinh ban muon thuc hien: "
read P
echo -n "Ban da chon $P, la "

readN () {
    echo -n "Vui long nhap so A: "
    read A
    echo -n "Vui long nhap so B: "
    read B
}

case $P in

    5.1)
        echo "phep tinh cong" 
        readN
        echo "Tong la: $(($A + $B))"
        ;;

    5.2)
        echo "phep tinh tru"
        readN
        echo "Hieu la: $(($A - $B))"
        ;;

    5.3)
        echo "phep tinh nhan"
        readN
        echo "Tich la: $(($A * $B))"
        ;;

    5.4)
        echo "phep tinh chia"
        readN
        echo -n "Thuong la: "
        printf "%.3f\n" $(echo "$A / $B" | bc -l)
        ;;

    5.5)
        echo "ket thuc chuong trinh"
        ;;
esac