# 防御力
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #1000 ExWeapons.rng
scoreboard players set #check ExWeapons.rnd 0
### S
execute if entity @s[scores={ExWeapons.rnd=995..999}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/s/detail/armor
### A
execute if entity @s[scores={ExWeapons.rnd=960..994}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/a/detail/armor
### B
execute if entity @s[scores={ExWeapons.rnd=850..959}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/b/detail/armor
### C
execute if entity @s[scores={ExWeapons.rnd=600..849}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/c/detail/armor
### D
execute if entity @s[scores={ExWeapons.rnd=0..599}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/d/detail/armor