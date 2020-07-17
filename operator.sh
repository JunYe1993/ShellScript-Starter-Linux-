#!/bin/sh

    # 執行 : sh operator.sh 數字1 數字2 ...
    
    # 此格式為固定的, ``, operator 前後要有空格
    # expr 不會檢查 $1 跟 $2, 所以沒有的話會出錯
    # 即使加了 "" 也會被判定 null, 造成 non-integer 也是錯 
    val=`expr $1 + $2`    # 相加
    val=`expr $1 - $2`    # 相減
    val=`expr $1 \* $2`   # 相乘 (*須加反斜線)
    val=`expr $1 / $2`    # 相除
    val=`expr $1 % $2`    # 取餘數

    # ==, !=, >, <, >=, <=
    if [ $1 = $2 ]; then
        val="equal"
    fi

    if [ $1 != $2 ]; then
        val="non-equal"
    fi

    if [ $1 -eq $2 ]; then
        val="equal"
    fi

    if [ $1 -ne $2 ]; then
        val="non-equal"
    fi

    if [ $1 -gt $2 ]; then
        val="greater than"
    fi

    if [ $1 -lt $2 ]; then
        val="less than"
    fi

    if [ $1 -ge $2 ]; then
        val="greater or equal"
    fi

    if [ $1 -le $2 ]; then
        val="less or equal"
    fi

exit 0
