### get y >> 1
### set to _1 MT-Calc
scoreboard players operation _1 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _1 MT-Calc /= $MT_2 MT-Const
execute if score _1 MT-Calc matches ..-1 run scoreboard players operation _1 MT-Calc -= $MT_-2^31 MT-Const

### Multiply A

### get 32th bit of y
### set to _2 MT-Calc
scoreboard players operation _2 MT-Calc = $MT-Y MT-Calc
scoreboard players operation _2 MT-Calc %= $MT_2 MT-Const

### get _1 XOR a
### set to _1 MT-Calc

execute if score _2 MT-Calc matches 1 run function mt:generate/2-1

### get x[(i+m) mod n]
### set to _2 MT-Calc
scoreboard players operation $MT-Seed MT-Input1 = $MT-Seed MT-Index
scoreboard players operation $MT-Seed MT-Input1 += $MT-m MT-Const
scoreboard players operation $MT-Seed MT-Input1 %= $MT-n MT-Const
function mt:seed/get
scoreboard players operation _2 MT-Calc = $MT-Seed MT-Output


### get _2 XOR _1
### set to x
scoreboard players operation $MT-XOR MT-Input1 = _1 MT-Calc
scoreboard players operation $MT-XOR MT-Input2 = _2 MT-Calc
function binary:xor
scoreboard players operation $MT-X MT-Calc = $MT-XOR MT-Output

### update x[i]
scoreboard players operation $MT-Seed Input1 = $MT-Seed MT-Index
function mt:seed/shift
execute store result storage mt: Seed[-4][-4][-4][-4][-4].value int 1 run scoreboard players get $MT-X MT-Calc

