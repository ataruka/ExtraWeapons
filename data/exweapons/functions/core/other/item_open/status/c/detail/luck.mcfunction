# [C]幸運
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #30 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #10 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #5 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 30
data modify storage open: Tmp[].detail.Luck set value 0.01
execute store result storage open: Tmp[].detail.Luck float 0.01 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].detail.Luck
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/luck