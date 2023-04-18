### set x to y
scoreboard players operation $MT-Y MT-Calc = $MT-X MT-Calc

### get (y >> 11)
### set to _1 MT-Calc
scoreboard players operation _1 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _1 MT-Calc /= $MT_2^11 MT-Const
execute if score _1 MT-Calc matches ..-1 run function mt:generate/3-1

### get y XOR _1
### set to y
scoreboard players operation $MT-XOR MT-Input1 = $MT-Y MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = _1 MT-Calc
function binary:xor
scoreboard players operation $MT-Y MT-Calc = $MT-XOR MT-Output



### get (y << 7)
### set to _1 MT-Calc
scoreboard players operation _1 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _1 MT-Calc *= $MT_2^7 MT-Const


### get y XOR (_1 AND b)
### set to y

### get _1 AND b
scoreboard players operation $MT-AND MT-Input1 = _1 MT-Calc
scoreboard players operation $MT-AND MT-Input2 = $MT-b MT-Const
function binary:and

scoreboard players operation $MT-XOR MT-Input1 = $MT-Y MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = $MT-AND MT-Output
function binary:xor
scoreboard players operation $MT-Y MT-Calc = $MT-XOR MT-Output


### get (y << 15)
### set to _1 MT-Calc
scoreboard players operation _1 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _1 MT-Calc *= $MT_2^15 MT-Const


### get y XOR (_1 AND c)
### set to y
scoreboard players operation $MT-AND MT-Input1 = _1 MT-Calc
scoreboard players operation $MT-AND MT-Input2 = $MT-c MT-Const
function binary:and

scoreboard players operation $MT-XOR MT-Input1 = $MT-Y MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = $MT-AND MT-Output
function binary:xor
scoreboard players operation $MT-Y MT-Calc = $MT-XOR MT-Output

### get (y >> 18)
### set to _1 MT-Calc
scoreboard players operation _1 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _1 MT-Calc /= $MT_2^18 MT-Const
execute if score _1 MT-Calc matches ..-1 run function mt:generate/3-2


### get y XOR _1
### set to y
scoreboard players operation $MT-XOR MT-Input1 = $MT-Y MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = _1 MT-Calc
function binary:xor
scoreboard players operation $MT-RAND MT-Output = $MT-XOR MT-Output

