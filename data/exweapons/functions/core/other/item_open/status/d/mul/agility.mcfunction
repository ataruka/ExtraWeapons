# [D]俊敏_Mul
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #30 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #10 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #8 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd *= #10 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 30
data modify storage open: Tmp[].Agility_Mul set value 1
execute store result storage open: Tmp[].Agility_Mul float 0.1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].Agility_Mul
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/agility_mul