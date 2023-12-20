# [B]器用さ
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #4 ExWeapons.rng
scoreboard players add @s ExWeapons.rnd 6
data modify storage open: Tmp[].Dexterity set value 1
execute store result storage open: Tmp[].Dexterity float 1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].Dexterity
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/dexterity