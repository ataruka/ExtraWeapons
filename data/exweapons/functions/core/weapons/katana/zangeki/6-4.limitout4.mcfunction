# LimitOut処理
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:2,Amplifier:5b,Duration:15,ShowParticles:0b}]}
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11,Amplifier:5b,Duration:20,ShowParticles:1b}]}
 
 execute rotated ~-45 0 positioned ^ ^ ^6 run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 1 1 1 1 500 force
 execute rotated ~-45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
 execute rotated ~-45 0 positioned ^ ^ ^6 run tag @e[type=!#exweapons:non_living,tag=!exweapons.protect,distance=..5] add ExWeapons.Abnormal.thunderLv1
 execute rotated ~-45 0 positioned ^ ^ ^6 run scoreboard players set @e[type=!#exweapons:non_living,tag=!exweapons.protect,distance=..5] ExWeapons.Abnormal.thunderTick 400
 
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1

 execute rotated ~45 0 positioned ^ ^ ^6 run summon text_display ^ ^ ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~-45 0 positioned ^ ^ ^6 run summon text_display ^ ^ ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~135 0 positioned ^ ^ ^6 run summon text_display ^ ^ ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~-135 0 positioned ^ ^ ^6 run summon text_display ^ ^ ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}

# LimitOutのダメージ処理
 tag @s add tmp.owner

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= #10 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= $katana_ZangekiMultiplierLimitOut ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.AttributeAbility.ThunderDamage
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng 3

 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 rotated ~-45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 rotated ~-45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] rotated ~-45 0 positioned ^ ^ ^6 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..4,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/
 tag @e remove tmp.target
 tag @s remove tmp.owner
 scoreboard players reset @s ExWeapons.katana.ZangekiLimitOut