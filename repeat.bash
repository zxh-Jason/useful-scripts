#!/bin/bash
clear
echo -ne "\033[s"
if [[ $(($2))>0 ]]; then
    if [[ $(($3))>0 ]]; then
        a=$(($2*$3))
        b=$(($2))
        while true
        do
            echo -ne "\033[u\033[J"
            $1|head -n $a|tail -n $b
            sleep 1
        done
    else
        a=$(($2))
        while true
        do
            echo -ne "\033[u\033[J"
            $1|head -n $a
            sleep 1
        done
    fi
	else
    while true
    do
        echo -ne "\033[u\033[J"
        $1
        sleep 1
    done
fi
