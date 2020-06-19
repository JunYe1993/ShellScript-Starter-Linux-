#!/bin/bash


# Shell 字串操作

    file=/dir1/dir2/dir3/my.file.txt

    # 字串刪減
    # '#' 專刪右邊
    echo ${file#*/}   # 從左邊開始批配，刪掉 / 自身和其左邊的字串：dir1/dir2/dir3/my.file.txt
    echo ${file##*/}  # 從右邊開始批配，刪掉 / 自身和其左邊的字串：my.file.txt
    echo ${file#*.}   # 從左邊開始批配，刪掉 . 自身和其左邊的字串：file.txt
    echo ${file##*.}  # 從右邊開始批配，刪掉 . 自身和其左邊的字串：txt
    # '%' 專刪右邊
    echo ${file%/*}   # 從右邊開始批配，刪掉 / 自身和其右邊的字串：/dir1/dir2/dir3
    echo ${file%%/*}  # 從左邊開始批配，刪掉 / 自身和其右邊的字串：
    echo ${file%.*}   # 從右邊開始批配，刪掉 . 自身和其右邊的字串：/dir1/dir2/dir3/my.file
    echo ${file%%.*}  # 從左邊開始批配，刪掉 . 自身和其右邊的字串：/dir1/dir2/dir3/my


    # 擷取字串
    echo ${file:0:5}  # 從 index 為 0 之字元，往後擷取 5 個：/dir1
    echo ${file:5:5}  # 從 index 為 5 之字元，往後擷取 5 個：/dir2


    # 字串 replacement
    echo ${file/dir/path}  # 將第一個 dir 取代成 path：/path1/dir2/dir3/my.file.txt
    echo ${file//dir/path} # 將全部的 dir 取代成 path：/path1/path2/path3/my.file.txt


# Array 操作

    declare -a ARRAY
    ARRAY=(first second third)
    echo ${ARRAY[0]}      # first
    echo ${ARRAY[1]}      # second
    echo ${ARRAY[2]}      # third
    echo ${ARRAY[*]}      # first second third
    echo ${ARRAY[*]:1:2}  # second third
    echo ${ARRAY[@]:1:2}  # second third


# 條件式 condition

    # -z	Checks if the given string operand size is zero. If it is zero length then it returns true.
    # -n	Checks if the given string operand size is non-zero. If it is non-zero length then it returns true.
    if [ -n ${ARRAY[0]} ]; then
        echo "is array[0]"
    fi
    if [ -z ${ARRAY[3]} ]; then
        echo "no array[3]"
    fi

    # -d file	Check if file is a directory if yes then condition becomes true.

    if [ -d testfolder/layer1 ]; then
    echo "testfolder/layer1 exist"
    fi


# 與其他程式互動

    # find 找當前資料夾(.)底下所有檔案(-type f)，最多往下找三層(-maxdepth 3)
    machines=$(find . -maxdepth 3 -type f)
    echo $machines

for md in ${machines}; do
  machines=$(basename "$md" | sed 's/\.conf//')
done