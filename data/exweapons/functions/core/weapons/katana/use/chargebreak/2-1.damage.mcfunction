# 斬撃のダメージ処理
 tag @s add tmp.owner

 execute anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/chargebreak/0-damage
 particle minecraft:dust 0.616 0.102 0.841 0.75 ~ ~1 ~ 2 1 2 0 500 force
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7 0
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7 0
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7 0
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.5 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.5 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.5 0

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_useMultiplier_Mode0_ChargeBreak ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_mainhand
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_offhand
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_armor1
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_armor2
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_armor3
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul_armor4
 scoreboard players operation $Tmp ExWeapons.rng /= #1000 ExWeapons.rng
 scoreboard players operation $AttributeDamageCal3 ExWeapons.rng = @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WaterDamage
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng 3

## ダメージ適用
### Player 
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^3 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^3 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^3 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/
#### return
 scoreboard players set $BypassArmor ExWeapons.rng 0
 scoreboard players set $isPhysics ExWeapons.rng 0
 scoreboard players set $ArgumentDamageType ExWeapons.rng 0
 scoreboard players set $BypassInvulnerabilityTime ExWeapons.rng 0
 scoreboard players set $BypassResistance ExWeapons.rng 0
 scoreboard players set $BypassKB ExWeapons.rng 0
 scoreboard players set $BypassEPF ExWeapons.rng 0
 scoreboard players set $DamageType ExWeapons.rng -1
 scoreboard players set $Damageid ExWeapons.rng -1

## 状態異常付与
### Player
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] run scoreboard players set @s ExWeapons.Abnormal.thunderTick 200
 execute as @e[tag=tmp.target] run tag @s add ExWeapons.Abnormal.thunderLv3
 
# リセット
 tag @e[tag=tmp.target] remove tmp.target
 tag @s remove tmp.owner