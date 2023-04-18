#######################
### $MT-XOR MT-Input1 : 入力1
### $MT-XOR MT-Input2 : 入力2
### $MT-XOR MT-Output : 出力
#######################

scoreboard players operation $MT-AND MT-Input1 = $MT-XOR MT-Input1
scoreboard players operation $MT-AND MT-Input2 = $MT-XOR MT-Input2
function binary:and
scoreboard players operation $MT-AND MT-Output *= $MT_2 MT-Const
scoreboard players operation $MT-XOR MT-Input1 += $MT-XOR MT-Input2
scoreboard players operation $MT-XOR MT-Input1 -= $MT-AND MT-Output

scoreboard players operation $MT-XOR MT-Output = $MT-XOR MT-Input1
