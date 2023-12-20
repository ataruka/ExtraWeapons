# メインハンド開封！
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rng ExWeapons.rnd = #5 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rng ExWeapons.rnd
scoreboard players set #check ExWeapons.rnd 0
### AgilityMul
execute if entity @s[scores={ExWeapons.rnd=4}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/mul/agility
### DefenseMul
execute if entity @s[scores={ExWeapons.rnd=3}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/mul/defense
### DexterityMul
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/mul/dexterity
### IntelligenceMul
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/mul/intelligence
### StrengthMul
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/mul/strength