#!/bin/bash

clear
echo -n "Vui long nhap bang cuu chuong can truy van: "
read num
echo "----- Day la ket qua -----"

cal () {
    for (( j=1 ; j <= 10 ; j++ ))
    do
        echo "$num x $j = $(expr $num \* $j)"
    done
}

con () {
    echo -n "Ban co muon tiep tuc truy van khong? "
    read i
}

if [[ $num -gt 0 && $num -lt 10 ]]
then
    cal
    con
    while [ $i = "yes" ]
    do
        echo -n "Vui long nhap bang cuu chuong can truy van: "
        read num
        echo "----- Day la ket qua -----"
        cal
        con
    done
else 
    echo "So nhap vao khong hop le"
fi

exit 0