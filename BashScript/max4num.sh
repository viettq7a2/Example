#!/bin/bash

clear
echo -e "Day la chuong trinh tim so lon nhat trong 4 so \n------"
echo -e "Vui long nhap so thu nhat: \n-----"
read num1
echo -e "Vui long nhap so thu hai: \n-----"
read num2
echo -e "Vui long nhap so thu ba: \n-----"
read num3
echo -e "Vui long nhap so thu tu: \n-----"
read num4

max=$num1
for i in {$num2,$num3,$num4}
do
    if [ $i -gt $max ]
    then
        max=$i
    fi
done
echo "So lon nhat la: $max"

exit 0