 execute if entity @s[scores={ExWeapons.Abnormal.fireTick=1..}] run function exweapons:core/abnormal/wind/fire/damage_lv2

 execute if entity @s[scores={ExWeapons.Abnormal.waterTick=1..}] run function exweapons:core/abnormal/wind/water/damage_lv2

 execute if entity @s[scores={ExWeapons.Abnormal.thunderTick=1..}] run function exweapons:core/abnormal/wind/thunder/damage_lv2
 
 execute if entity @s[scores={ExWeapons.Abnormal.grassTick=1..}] run function exweapons:core/abnormal/wind/grass/damage_lv2
 
 execute if entity @s[scores={ExWeapons.Abnormal.iceTick=1..}] run function exweapons:core/abnormal/wind/ice/damage_lv2

 execute if entity @s unless score $Spread ExWeapons.rng matches 1 run function exweapons:core/abnormal/wind/wind/damage_lv2
 scoreboard players reset $Spread ExWeapons.rng