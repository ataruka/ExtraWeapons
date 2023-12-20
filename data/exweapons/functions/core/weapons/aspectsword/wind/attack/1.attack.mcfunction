# Attack処理
 tag @s add tmp.owner

## ダメージ適用
### Player 
#execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
#execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
#execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
#execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/run

## 状態異常付与
### Player
#execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] add tmp.target
#execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### Mob
#execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!tmp.owner] add tmp.target
### 特殊
 execute positioned ^ ^ ^4 as @e[distance=..9,tag=!tmp.owner] at @s on attacker if entity @s[tag=tmp.owner] as @e[sort=nearest,limit=1,distance=..0.1] run function exweapons:core/damage/attack_track
### Run
 execute as @e[tag=tmp.target] at @s run function exweapons:core/abnormal/wind/damage_lv1
 execute as @e[tag=tmp.target] at @s run function exweapons:core/abnormal/wind/spread_lv1
 
# リセット
 tag @e[tag=tmp.target] remove tmp.target
 tag @s remove tmp.owner