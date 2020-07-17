#!/bin/sh
    
    # 執行 : sh operator2.sh 字串1 字串2 ...
    # 參數判斷時, 最好加上 "", 否則有高機率失效, 並出現 unary operator expected 等錯誤.
    
    if [ -z "$1" ]; then
        echo "there's no argument"
    fi

    if [ ! -z "$1" ]; then
        echo "there's at least one argument (!-z)"
    fi

    if [ -n "$1" ]; then
        echo "there's at least one argument (-n)"
    fi

    if [ "$1" ]; then
        echo "#1 argument is exist"
    fi

    # boolean operator -a = and, -o = or

    if [ "$1" -a "$2" ]; then
        echo "#1 and #2 arguments are both exist"
    fi

    if [ "$1" -o "$2" ]; then
        echo "there's at least one argument"
    fi

exit 0