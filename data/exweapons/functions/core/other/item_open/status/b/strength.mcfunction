# [B]力
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #4 ExWeapons.rng
scoreboard players add @s ExWeapons.rnd 6
data modify storage open: Tmp[].Strength set value 1
execute store result storage open: Tmp[].Strength float 1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].Strength
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/strength