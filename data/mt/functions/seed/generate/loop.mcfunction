scoreboard players operation $MT-Seed MT-Input1 = $MT-Seed MT-Index
function mt:seed/shift

execute store result storage mt: Seed[-4][-4][-4][-4][-4].value int 1 run scoreboard players get $MT-Seed MT-Calc
scoreboard players operation $MT-Seed MT-Calc *= $MT_69069 MT-Const
scoreboard players add $MT-Seed MT-Index 1
execute if score $MT-Seed MT-Index matches ..623 run function mt:seed/generate/loop