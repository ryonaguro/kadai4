#!/bin/bash

# テスト関数
test_gcd_script() {
    input1=$1
    input2=$2
    ans=$3

    # テスト対象のスクリプトを実行し終了コードを取得
    bash euclid.sh "$input1" "$input2" >/dev/null 2>&1
    exit_code=$?
    # 終了コードの判定
    if [[ ${exit_code} != $ans ]]; then
        echo "Test Failed: gcd($input1, $input2) - Exit Code: $exit_code"
	echo "error"
	exit 1
    fi
}

# テストケースの定義
test_gcd_script 10 25 0
test_gcd_script 21 28 0
test_gcd_script 100 200 0
test_gcd_script 15 9 0 
test_gcd_script 17 23 0 
test_gcd_script 49 63 0 
test_gcd_script a b 1
test_gcd_script 15 a 1
test_gcd_script "x" 25 1
test_gcd_script 50 "fdada" 1
test_gcd_script a 1 1
test_gcd_script 45 tester 1
test_gcd_script 15 "" 1
test_gcd_script "" 25 1
test_gcd_script "ewgfw" "wqwq" 1
test_gcd_script "x" "" 1
test_gcd_script "" "dasda" 1
test_gcd_script "" "" 1
test_gcd_script 1 1 0
test_gcd_script 1 -26 1
test_gcd_script -111 -26 1
test_gcd_script -211 263 1
test_gcd_script -rfc -qq 1
test_gcd_script 1 -fw 1
test_gcd_script -fa afa 1
echo "full success"


