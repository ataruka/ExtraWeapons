### get (y >> 1) XOR a
### set to _1 MT-Calc

scoreboard players operation $MT-XOR MT-Input1 = _1 MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = $MT-a MT-Const
function binary:xor
scoreboard players operation _1 MT-Calc = $MT-XOR MT-Output