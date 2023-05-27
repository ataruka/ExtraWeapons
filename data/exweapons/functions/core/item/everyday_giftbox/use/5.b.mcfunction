# 実行
particle minecraft:item cyan_dye ~ ~0.5 ~ 0 0 0 0.5 100 force
scoreboard players reset #randomRng ExWeapons.rng
scoreboard players operation #randomRng ExWeapons.rng += #6 ExWeapons.rng
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #randomRng ExWeapons.rng
## 等級:B
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/weapons/aspectsword/grass/0.give
execute if score @s ExWeapons.rnd matches 1 run function exweapons:core/weapons/aspectsword/fire/0.give
execute if score @s ExWeapons.rnd matches 2 run function exweapons:core/weapons/aspectsword/water/0.give
execute if score @s ExWeapons.rnd matches 3 run function exweapons:core/weapons/aspectsword/ice/0.give
execute if score @s ExWeapons.rnd matches 4 run function exweapons:core/weapons/aspectsword/thunder/0.give
execute if score @s ExWeapons.rnd matches 5 run function exweapons:core/weapons/aspectsword/wind/0.give

scoreboard players reset @s ExWeapons.rnd