# 実行
particle minecraft:item orange_dye ~ ~0.5 ~ 0 0 0 0.5 100 force
scoreboard players reset #randomRng ExWeapons.rng
scoreboard players operation #randomRng ExWeapons.rng += #2 ExWeapons.rng
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #randomRng ExWeapons.rng
## 等級:S
execute if score @s ExWeapons.rnd matches 0 run function exweapons:core/weapons/katana/0.give
execute if score @s ExWeapons.rnd matches 1 run function exweapons:core/weapons/kuzyakusen/0.give

scoreboard players reset @s ExWeapons.rnd