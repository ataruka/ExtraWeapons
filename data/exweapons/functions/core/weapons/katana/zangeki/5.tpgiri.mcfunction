# 斬撃のダメージ処理
 tag @s add tmp.owner

 function exweapons:core/particle/katana/zangeki4

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_ZangekiMultiplier4 ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.AttributeAbility.FrostDamage
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng

## ダメージ適用
### Player 
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/run

## 状態異常付与
### Player
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] run scoreboard players set @s ExWeapons.Abnormal.iceTick 200
 execute as @e[tag=tmp.target] run tag @s add ExWeapons.Abnormal.iceLv3
 
# リセット
 tag @e remove tmp.target
 tag @s remove tmp.owner