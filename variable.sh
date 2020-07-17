#!/bin/sh

    # 執行 : sh variable.sh a b c 

    echo $0         # script 本身
    echo $1 $2 $3   # 執行 script 時, 後面跟著的 arguments
    echo $#         # arguments 之總數
    echo $*         # 全部 arguments, 這個例子就是 a b c 
    echo $@         # 全部 arguments, 這個例子就是 a b c ($* $@ 應該有所不同, 不過我試不出來...)
    echo $?         # 上一個程式最後回傳值 (exit 0)
    echo $$         # 此 shell 的 pid
    echo $!         # 此 shell 最後執行的 background process 的 pid

exit 0
