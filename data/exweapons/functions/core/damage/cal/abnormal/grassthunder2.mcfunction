# ダメージ計算
 scoreboard players set $Damagecal ExWeapons.rng 100
 scoreboard players operation $Damagecal ExWeapons.rng += #30 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players add @s ExWeapons.damagerng 30
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0