# [A]炎ダメージ
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #50 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #30 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #10 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 610
data modify storage open: Tmp[].attribute.FireDamage set value 1
execute store result storage open: Tmp[].attribute.FireDamage float 0.1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].attribute.FireDamage
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/attributes/firedamage_mul