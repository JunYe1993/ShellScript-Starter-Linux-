#!/bin/bash
# Shell 字串操作
# 執行 bash string.sh

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

    # 取子字串
    echo ${file:0:5}  # 從 index 為 0 之字元，往後取 5 個：/dir1
    echo ${file:5:5}  # 從 index 為 5 之字元，往後取 5 個：/dir2

    # 字串取代
    echo ${file/dir/path}  # 將第一個 dir 取代成 path：/path1/dir2/dir3/my.file.txt
    echo ${file//dir/path} # 將全部的 dir 取代成 path：/path1/path2/path3/my.file.txt

exit 0