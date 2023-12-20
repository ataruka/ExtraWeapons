# tp
## 処理
particle end_rod ~ ~ ~ 0 0 0 0.5 1 force
scoreboard players add $Tmp_AdDamage ExWeapons.rng 1
execute if entity @s positioned ~ ~-0.1 ~ unless block ~ ~ ~ #exweapons:no_collision run tp @s ~ ~0.1 ~
execute if entity @s positioned ~ ~-0.1 ~ if block ~ ~ ~ #exweapons:no_collision run function exweapons:core/weapons/katana/use/mode1/1-7.tp