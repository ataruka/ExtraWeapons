

### get x[i]
### set to $MT-X MT-Calc
scoreboard players operation $MT-Seed MT-Input1 = $MT-Seed MT-Index
function mt:seed/get
scoreboard players operation $MT-X MT-Calc = $MT-Seed MT-Output


### get x[(i+1) mod n]
### set to _2 MT-Calc
scoreboard players operation $MT-Seed MT-Input1 = $MT-Seed MT-Index
scoreboard players add $MT-Seed MT-Input1 1
scoreboard players operation $MT-Seed MT-Input1 %= $MT-n MT-Const
function mt:seed/get
scoreboard players operation _2 MT-Calc = $MT-Seed MT-Output


### concatenate upper 1 bit of x[i] to lower 31 bit of x[(i+1) mod n]
scoreboard players operation $MT-Y MT-Calc = _2 MT-Calc
execute if score $MT-X MT-Calc matches ..-1 if score _2 MT-Calc matches 0.. run scoreboard players operation $MT-Y MT-Calc += $MT_-2^31 MT-Const
execute if score $MT-X MT-Calc matches 0.. if score _2 MT-Calc matches ..-1 run scoreboard players operation $MT-Y MT-Calc -= $MT_-2^31 MT-Const


