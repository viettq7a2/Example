#!/bin/bash

clear

cal1 () {
    echo -n "Vui lòng nhập số lượng số muốn tính tổng: "
    read N
    echo "----- Đây là kết quả -----"

    tong () {
    S=0
    for (( i=1 ; i <= N ; i++ ))
    do
        S=$(( $S + $i ))
    done
    echo "Tổng là: $S"
    }

    if [ $N -gt 0 ]
    then
        tong
    else
        while [ $N -le 0 ]
        do
            echo -n "Số chọn không hợp lệ, vui lòng nhập lại: "
            read N
        done
        tong
    fi
}

cal2 () {
    echo -n "Vui lòng nhập số lượng số muốn tính tổng: "
    read N
    echo "----- Đây là kết quả -----"

    tong1 () {
    for (( i=1 ; i <= N ; i++ ))
    do
        S=$(( $S + $i ))
    done
    }

    tong2 () {
    S=3
    for (( i=3 ; i <= N ; i++ ))
    do
        x=$(( $x * -1 ))
        y=$(( $x * $i ))
        S=$(( $S + $y ))
    done
    }

    cal () {
    if [ $N -le 2 ]
    then
        tong1
    elif [ $N -gt 2 ]
    then
        tong2
    fi
    echo "Tổng là: $S"
    }

    x=1;S=0
    if [ $N -gt 0 ]
    then
        cal
    else
        while [ $N -le 0 ]
        do
            echo -n "Số chọn không hợp lệ, vui lòng nhập lại: "
            read N
        done
        cal
    fi
}

cal3 () {
    echo -n "Nhập số cần kiểm tra: "
    read num
    echo "----- Đây là kết quả -----"
    
    if [ $num -lt 2 ]
    then
        echo "<< $num không phải là số nguyên tố >>"
    else
        if [[ ( $(( $num % 1 )) -eq 0 ) && ( $(( $num % $num )) -eq 0 )]]
        then
            for (( i=2 ; i <= $(($num/2)) ; i++ ))
            do
                if [ $(( $num % $i )) -eq 0 ]
                then
                    echo "<< $num không phải là số nguyên tố >>"
                exit 0
                fi
            done
            echo "<<< $num chính xác là số nguyên tố >>>"
        fi
    fi
}

cal4 () {
    echo -n "Vui lòng nhập bảng cửu chương cần truy vấn: "
    read num
    echo "----- Đây là kết quả -----"

    cal () {
        for (( j=1 ; j <= 10 ; j++ ))
        do
            echo "$num x $j = $(expr $num \* $j)"
        done
    }

    if [[ $num -gt 0 && $num -lt 10 ]]
    then
        cal
    else 
        while [[ $num -le 0 || $num -ge 10 ]]
        do 
            echo -n "Bảng cửu chương không hợp lệ, vui lòng nhập lại: "
            read num
        done
        cal
    fi
}

cal5 () {
    readN () {
        echo -n "Vui lòng nhập số A: "
        read A
        echo -n "Vui lòng nhập số B: "
        read B
    }

    case5 () {
        case $P in

        1)
            echo "phép tính cộng" 
            readN
            echo "Tổng là: $(($A + $B))"
            ;;

        2)
            echo "phép tính trừ"
            readN
            echo "Hiệu là: $(($A - $B))"
            ;;

        3)
            echo "phép tính nhân"
            readN
            echo "Tích là: $(($A * $B))"
            ;;

        4)
            echo "phép tính chia"
            readN
            echo -n "Thương là: "
            printf "%.3f\n" $(echo "$A / $B" | bc -l)
            ;;

        5)
            echo "Kết thức chương trình số 5"
            ;;

        *)
            echo "## Phép tính không hợp lệ, vui lòng chọn lại phép tính ##"
            ;;
        esac
    }

    while true
    do
        echo -n "===> Hãy chọn phép tính: "
        read P
        echo "----- Đây là kết quả -----"
        echo -n "Bạn đã chọn số 5.$P, là "
        case5
        if [ $P -eq 5 ]
        then
            break
        fi
    done
}

caseVO () {
    case $V in

        1)
            echo "----- Đây là chương trình tính tổng N số không đổi dấu -----"
            cal1
            ;;

        2)
            echo "----- Đây là chương trình tính tổng N số có đổi dấu -----"
            cal2
            ;;

        3)
            echo "----- Đây là chương trình kiểm tra số nguyên tố -----"
            cal3
            ;;

        4)
            echo "----- Đây là chương trình tra cứu bảng cửu chương -----"
            cal4
            ;;

        5)
            echo "----- Đây là chương trình thực hiện các phép tính cơ bản -----"
            cal5
            ;;
        
        6)
            echo "***** Chương trình kết thúc, cám ơn bạn sử dụng *****"
            ;;

        *)
            echo "## Chương trình không hợp lệ, vui lòng chọn lại ##"
            ;;
    esac
}

while true
do
    echo -n "===> Nhập chương trình bạn muốn chạy: "
    read V
    echo "Bạn đã lựa chọn số $V"
    caseVO
    if [ $V -eq 6 ]
    then
        break
    fi
done
