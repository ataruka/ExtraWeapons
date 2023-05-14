# ダメージ計算
 scoreboard players set $Damagecal ExWeapons.rng 100
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.AttributeAbility.WindProtection
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0