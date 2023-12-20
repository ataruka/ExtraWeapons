# 斬撃のダメージ処理
 tag @s add tmp.owner
 tag @s remove ExWeapons.katana.useCombo6sneak

 execute anchored eyes positioned ^ ^ ^ run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 1 100 force
 execute anchored eyes positioned ^ ^ ^ run particle minecraft:dust 1 1 1 2 ~ ~ ~ 2 1.2 2 1 300 force
 effect give @s slow_falling 3 125 true
## 音
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.5 0

## Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:6}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt

## スコア適応
 scoreboard players set @s ExWeapons.katana.useReturn 10
 scoreboard players reset @s ExWeapons.katana.useCombo6sneak

## ダメージ計算
 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_useMultiplier_Mode1_6sneak ExWeapons.setting
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
 scoreboard players operation $AttributeDamageCal2 ExWeapons.rng = @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WaterDamage
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng -1

## ダメージ適用
### Player 
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^ run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^ run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Mob
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^2 run tag @e[distance=..3,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
### Run
 execute as @e[tag=tmp.target] run function exweapons:core/weapons/katana/use/mode1/4-6-sneak.cal
 execute as @e[tag=tmp.target,tag=!tmp.over50,scores={ExWeapons.InvulnerabilityTime=0}] at @s run function exweapons:core/damage/
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
### ダメージ計算
 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_useMultiplier_Mode1_6sneak_50 ExWeapons.setting
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
 scoreboard players operation $AttributeDamageCal2 ExWeapons.rng = @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WaterDamage
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng -1
### Run
 execute as @e[tag=tmp.target,tag=tmp.over50] at @s run function exweapons:core/damage/
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
# execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes positioned ^ ^ ^ run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
# execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes positioned ^ ^ ^ run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Mob
# execute if entity @e[tag=tmp.owner,type=!player] anchored eyes positioned ^ ^ ^ run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
### Run
# execute as @e[tag=tmp.target] run scoreboard players set @s ExWeapons.Abnormal.waterTick 10
# execute as @e[tag=tmp.target] run tag @s add ExWeapons.Abnormal.waterLv1
 
# リセット
 tag @e[tag=tmp.target] remove tmp.target
 tag @e[tag=tmp.over50] remove tmp.over50
 tag @s remove tmp.owner