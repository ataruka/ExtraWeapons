# メインハンド開封！
## リセット
data remove storage open: Tmp
data modify storage open: Tmp[] set value {Slot:1}
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #5 ExWeapons.rng
scoreboard players set #check ExWeapons.rnd 0
### Agility
execute if entity @s[scores={ExWeapons.rnd=4}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/agility
### Defense
execute if entity @s[scores={ExWeapons.rnd=3}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/defense
### Dexterity
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/dexterity
### Intelligence
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/intelligence
### Strength
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/strength