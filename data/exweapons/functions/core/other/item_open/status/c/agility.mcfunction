# [C]俊敏
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #3 ExWeapons.rng
scoreboard players add @s ExWeapons.rnd 4
data modify storage open: Tmp[].Agility set value 1
execute store result storage open: Tmp[].Agility float 1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].Agility
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/agility