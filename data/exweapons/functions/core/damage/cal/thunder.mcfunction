# ダメージ計算
 scoreboard players reset $Damagecal ExWeapons.rng
 scoreboard players operation $Damagecal ExWeapons.rng += $AttributeDamageCal3 ExWeapons.rng
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.AttributeAbility.ThunderProtection
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #1000 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0