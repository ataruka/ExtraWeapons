#斬撃処理
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:2,Amplifier:5b,Duration:15,ShowParticles:0b}]}
 summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11,Amplifier:5b,Duration:50,ShowParticles:1b}]}

 summon text_display ~ ~2 ~ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"LimitOut-剣技<神の怒り>","color":"red","bold":true,"italic":false}'}
 execute rotated ~45 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~-45 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~135 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute rotated ~-135 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["exweapons.textentity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 execute if entity @s[type=player] unless score $Tmp ExWeapons.rng matches 20.. run tellraw @s [{"text": "[ExWeapons]ERROR>> ","color": "red"},{"translate":"chatlog.exweapons.cp_is_insufficient","color": "red"},{"text": "(20/","color": "red"},{"score":{"name":"$Tmp","objective":"ExWeapons.rng"},"color": "red"},{"text": ")","color": "red"}]
 execute if score $Tmp ExWeapons.rng matches 20.. run scoreboard players remove $Tmp ExWeapons.rng 20
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200

 data merge storage exweapons: {item:{weapon:{nbt:{Charged:0}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s SelectedItem.tag.CustomModelData
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s HandItems[0].tag.CustomModelData
 data merge storage exweapons: {item:{weapon:{nbt:{CustomModelData:100040}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_custom-model-data
 data remove storage exweapons: item.weapon.nbt

 item modify entity @s weapon.mainhand exweapons:enchantments/kirakira_delete

 tag @s add exweapons.katana.zangeki5
 scoreboard players operation @s ExWeapons.katana.ZangekiTick = $katana_Zangeki_LimitOutDistance ExWeapons.setting
 
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
tag @s add tmp.check