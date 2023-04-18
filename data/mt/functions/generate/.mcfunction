##################
### $MT-RAND MT-Output : 出力
### $MT-X MT-Calc : シート値
### $MT-Y MT-Calc : 一時変数
### $MT-a MT-Const : 定数
### $MT-b MT-Const : 定数
### $MT-c MT-Const : 定数
### $MT-n MT-Const : 定数
### $MT-m MT-Const : 定数
### $MT-Seed MT-Index : カウンタ


## Step 1
function mt:generate/1

## Step 2
function mt:generate/2

## Step 3
function mt:generate/3


## update counter
scoreboard players add $MT-Seed MT-Index 1
scoreboard players operation $MT-Seed MT-Index %= $MT-n MT-Const

## Reset Calc
scoreboard players reset * MT-Calc

## Return
scoreboard players get $MT-RAND MT-Output