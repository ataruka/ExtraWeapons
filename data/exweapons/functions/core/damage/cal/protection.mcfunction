# ダメージ計算
## 通常
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
## ability
### メインハンド
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_mainhand
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
### オフハンド
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_offhand
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
### アーマー(head)
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor1
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
### アーマー(chest)
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor2
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
### アーマー(legs)
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor3
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
### アーマー(feet)
 scoreboard players set $Damagecal ExWeapons.rng 1000
 scoreboard players operation $Damagecal ExWeapons.rng -= @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor4
 scoreboard players operation @s ExWeapons.damagerng *= $Damagecal ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #100 ExWeapons.rng
 scoreboard players operation @s ExWeapons.damagerng /= #10 ExWeapons.rng
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0