#!/bin/bash
# Array 操作

    declare -a ARRAY      # 宣告 array 可以省略
    ARRAY=(first second third)
    echo ${ARRAY[0]}      # first
    echo ${ARRAY[1]}      # second
    echo ${ARRAY[2]}      # third
    echo ${ARRAY[*]}      # first second third
    echo ${ARRAY[*]:1:2}  # second third
    echo ${ARRAY[@]:1:2}  # second third

exit 0