# LimitOut処理
 summon area_effect_cloud ~ ~0.5 ~ {Tags:["ExWeapons.AEC"],Radius:0f,Duration:6,DurationOnUse:0f,Age:4,effects:[{id:"slowness",amplifier:5b,duration:15,show_particles:0b}]}
 effect give @s resistance 2 9 true

 execute rotated ~45 0 positioned ^ ^ ^6 run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 1 1 1 1 500 force
 execute rotated ~45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-10 ~
 execute rotated ~45 0 positioned ^ ^ ^6 run tag @e[type=!#exweapons:non_living,tag=!exweapons.protect,distance=..5] add ExWeapons.Abnormal.thunderLv1
 execute rotated ~45 0 positioned ^ ^ ^6 run scoreboard players set @e[type=!#exweapons:non_living,tag=!exweapons.protect,distance=..5] ExWeapons.Abnormal.thunderTick 400
# LimitOutのダメージ処理
 tag @s add tmp.owner

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_ZangekiMultiplierLimitOut ExWeapons.setting
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
 scoreboard players operation $AttributeDamageCal3 ExWeapons.rng = @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.ThunderDamage
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng 3
 scoreboard players set $Damageid ExWeapons.rng 9
 
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 rotated ~45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 rotated ~45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] rotated ~45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,scores={ExWeapons.InvulnerabilityTime=0}] at @s run function exweapons:core/damage/
## return
 scoreboard players set $BypassArmor ExWeapons.rng 0
 scoreboard players set $isPhysics ExWeapons.rng 0
 scoreboard players set $ArgumentDamageType ExWeapons.rng 0
 scoreboard players set $BypassInvulnerabilityTime ExWeapons.rng 0
 scoreboard players set $BypassResistance ExWeapons.rng 0
 scoreboard players set $BypassKB ExWeapons.rng 0
 scoreboard players set $BypassEPF ExWeapons.rng 0
 scoreboard players set $DamageType ExWeapons.rng -1
 scoreboard players set $Damageid ExWeapons.rng -1
 tag @e[tag=tmp.target] remove tmp.target
 tag @s remove tmp.owner