# [C]防御力
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 100
data modify storage open: Tmp[].detail.Armor set value 0.01
execute store result storage open: Tmp[].detail.Armor float 0.01 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].detail.Armor
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/armor