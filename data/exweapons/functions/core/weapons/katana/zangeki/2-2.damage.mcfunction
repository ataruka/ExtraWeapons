#　斬撃のダメージ処理
 tag @s add tmp.damage
 execute as @e[type=!#exweapons:non_living,tag=!exweapons.protect] if score @s OhMyDatID = @e[tag=tmp.damage,limit=1,type=armor_stand] ExWeapons.Attacker run tag @s add tmp.owner
 tag @e remove tmp.damage

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= #10 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng += @a[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_ZangekiMultiplier2 ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WaterDamage
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng 2

## ダメージ適用
### Player
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/

## 状態異常
### Player
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] if score $FriendlyFire ExWeapons.setting matches 1 positioned ^-1.5 ^ ^ run tag @e[distance=..2.5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] run scoreboard players set @s ExWeapons.Abnormal.waterTick 200
 execute as @e[tag=tmp.target] run tag @s add ExWeapons.Abnormal.waterLv1

# リセット
 tag @e remove tmp.target
 tag @e remove tmp.owner