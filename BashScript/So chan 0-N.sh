#!/bin/bash

clear
echo -n "Vui long nhap so N: "
read N 
echo "****** Danh sach cac so chan tu 0 den N *****"

if [ $N -gt 0 ]
then
    j=$(( $N - 1 ))
    for (( COUNTER = -1 ; COUNTER < j ; COUNTER ++ ))
    do
        COUNTER=$(($COUNTER + 1))
        echo "$COUNTER"
    done
else
    echo "So $N khong hop le"
fi

exit 0