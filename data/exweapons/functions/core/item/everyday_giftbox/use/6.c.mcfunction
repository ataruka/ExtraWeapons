# 実行
particle minecraft:item lime_dye ~ ~0.5 ~ 0 0 0 0.5 100 force
scoreboard players reset #randomRng ExWeapons.rng
scoreboard players operation #randomRng ExWeapons.rng += #2 ExWeapons.rng
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #randomRng ExWeapons.rng
## 等級:C
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/item/poppy_deuce/0.give
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/item/poppy_deuce/0.give
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/item/poppy_deuce/0.give
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/item/poppy_deuce/0.give
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/item/poppy_deuce/0.give
execute if score @s ExWeapons.rnd matches 1 run function exweapons:core/item/self-harm_and_recover_potion/0.give

scoreboard players reset @s ExWeapons.rnd