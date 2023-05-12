# 斬撃のダメージ処理
 tag @s add tmp.damage
 execute as @e[type=!#exweapons:non_living] if score @s OhMyDatID = @e[tag=tmp.damage,limit=1] ExWeapons.Attacker run tag @s add tmp.owner
 tag @e remove tmp.damage

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_ZangekiMultiplier ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WaterDamage
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng

## ダメージ適用
### Player
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/run

## 状態異常付与
### Player 
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] run scoreboard players set @s ExWeapons.Abnormal.waterTick 100
 execute as @e[tag=tmp.target] run tag @s add ExWeapons.Abnormal.waterLv1
 
# リセット
 tag @e remove tmp.target
 tag @e remove tmp.owner