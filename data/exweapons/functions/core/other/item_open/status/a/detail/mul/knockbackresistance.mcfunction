# [A]ノックバック耐性(乗算)
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rnd ExWeapons.rnd = #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #100 ExWeapons.rng
scoreboard players operation #Rnd ExWeapons.rnd += #1 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rnd ExWeapons.rnd
scoreboard players add @s ExWeapons.rnd 400
data modify storage open: Tmp[].detail.Mul_KnockbackResistance set value 0.1
execute store result storage open: Tmp[].detail.Mul_KnockbackResistance float 0.1 run scoreboard players get @s ExWeapons.rnd
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
data modify storage open: Set.Rng set from storage open: Tmp[].detail.Mul_KnockbackResistance
scoreboard players set #check ExWeapons.rnd -1
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/knockbackresistance_mul