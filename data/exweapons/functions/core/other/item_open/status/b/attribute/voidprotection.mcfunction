# [B]虚耐性
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #30 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 280
data modify storage open: Tmp[].attribute.VoidProtection set value 1
execute store result storage open: Tmp[].attribute.VoidProtection float 0.1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].attribute.VoidProtection
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/attributes/voidprotection_mul