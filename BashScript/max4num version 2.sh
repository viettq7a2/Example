#!/bin/bash

echo -e "Day la chuong trinh tim so lon nhat trong 4 so \n------"
echo -e "Vui long nhap so thu nhat: \n-----"
read num1
echo -e "Vui long nhap so thu hai: \n-----"
read num2
echo -e "Vui long nhap so thu ba: \n-----"
read num3
echo -e "Vui long nhap so thu tu: \n-----"
read num4

if [ $num1 -ge $num2 ]
then
        if [ $num1 -ge $num3 ]
        then
                if [ $num1 -ge $num4 ]
                then
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num1 \n-----"
                else
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num4 \n-----"
                fi
        else
                if [ $num3 -ge $num4 ]
                then
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num3 \n-----"
                else
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num4 \n-----"
                fi
        fi
else
        if [ $num2 -ge $num3 ]
        then
                if [ $num2 -ge $num4 ]
                then
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num2 \n-----"
                else
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num4 \n-----"
                fi
        else
                if [ $num3 -ge $num4 ]
                then
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num3 \n-----"
                else
                        echo -e "\n----- \nSo lon nhat trong 4 so la so: $num4 \n-----"
                fi
        fi
fi

exit 0
