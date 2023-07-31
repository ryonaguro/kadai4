#!/bin/bash

# 引数の数をチェック
if [ $# -ne 2 ]; then
    echo "引数は2つ指定してください。"
    exit 1
fi

# 引数が自然数かチェック
if ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "引数は自然数を入力してください。"
    exit 1
fi

# ユークリッドの互除法による最大公約数の計算
a=$1
b=$2
while [ $b -ne 0 ]
do
    temp=$b
    b=$((a % b))
    a=$temp
done

echo "最大公約数は$aです。"
