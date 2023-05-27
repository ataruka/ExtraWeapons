# 実行
particle minecraft:item magenta_dye ~ ~0.5 ~ 0 0 0 0.5 100 force
scoreboard players reset #randomRng ExWeapons.rng
scoreboard players operation #randomRng ExWeapons.rng += #2 ExWeapons.rng
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #randomRng ExWeapons.rng
## 等級:SS

scoreboard players reset @s ExWeapons.rnd