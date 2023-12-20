#斬撃処理

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 execute if entity @s[type=player] unless score $Tmp ExWeapons.rng matches 20.. run tellraw @s [{"text": "[ExWeapons]ERROR>> ","color": "red"},{"translate":"chatlog.exweapons.cp_is_insufficient","color": "red"},{"text": "(","color": "red"},{"score":{"name":"$Tmp","objective":"ExWeapons.rng"},"color": "red"},{"text": "/20)","color": "red"}]
 execute if entity @s[type=player] unless score $Tmp ExWeapons.rng matches 20.. run tag @s add tmp.noattack
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200
 execute if score $Tmp ExWeapons.rng matches 20.. run scoreboard players remove $Tmp ExWeapons.rng 20
 execute store result storage exweapons: item.weapon.nbt.ChargePoint int 1 run scoreboard players get $Tmp ExWeapons.rng

 execute if entity @s[tag=tmp.noattack] run item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 execute if entity @s[tag=tmp.noattack] run data remove storage exweapons: item.weapon.nbt
 execute if entity @s[tag=!tmp.noattack] run data merge storage exweapons: {item:{weapon:{nbt:{Charged:0}}}}
 execute if entity @s[tag=!tmp.noattack] run item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 execute if entity @s[tag=!tmp.noattack] run data remove storage exweapons: item.weapon.nbt

 execute if entity @s[tag=!tmp.noattack] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["ExWeapons.AEC"],Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:2,Amplifier:5b,Duration:15,ShowParticles:0b}]}
 execute if entity @s[tag=!tmp.noattack] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["ExWeapons.AEC"],Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11,Amplifier:5b,Duration:50,ShowParticles:1b}]}

 execute if entity @s[tag=!tmp.noattack] run summon text_display ~ ~2 ~ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"LimitOut-剣技<神の怒り>","color":"red","bold":true,"italic":false}'}
 execute if entity @s[tag=!tmp.noattack] rotated ~45 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute if entity @s[tag=!tmp.noattack] rotated ~-45 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute if entity @s[tag=!tmp.noattack] rotated ~135 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}
 execute if entity @s[tag=!tmp.noattack] rotated ~-135 0 positioned ^ ^ ^6 run summon text_display ^ ^0.5 ^ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"⚠","color":"red","bold":true,"italic":false}'}

 execute if entity @s[tag=!tmp.noattack] if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s SelectedItem.tag.CustomModelData
 execute if entity @s[tag=!tmp.noattack] if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s HandItems[0].tag.CustomModelData
 execute if entity @s[tag=!tmp.noattack] run data merge storage exweapons: {item:{weapon:{nbt:{CustomModelData:100040}}}}
 execute if entity @s[tag=!tmp.noattack] run item modify entity @s weapon.mainhand exweapons:nbtcopy_custom-model-data
 execute if entity @s[tag=!tmp.noattack] run data remove storage exweapons: item.weapon.nbt

 execute if entity @s[tag=!tmp.noattack] unless entity @s[nbt={SelectedItem:{tag:{exweapons:{weapon:{Enchant:true}}}}}] run item modify entity @s weapon.mainhand exweapons:enchantments/kirakira_delete
 execute if entity @s[tag=!tmp.noattack] run data merge storage exweapons: {item:{weapon:{nbt:{Enchant:false}}}}
 execute if entity @s[tag=!tmp.noattack] run item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 execute if entity @s[tag=!tmp.noattack] run data remove storage exweapons: item.weapon.nbt

 execute if entity @s[tag=!tmp.noattack] run tag @s add exweapons.katana.zangeki5
 execute if entity @s[tag=!tmp.noattack] run scoreboard players operation @s ExWeapons.katana.ZangekiTick = $katana_Zangeki_LimitOutDuration ExWeapons.setting
 
 execute if entity @s[tag=!tmp.noattack] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
 execute if entity @s[tag=!tmp.noattack] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
 execute if entity @s[tag=tmp.noattack] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
 execute if entity @s[tag=tmp.noattack] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
 execute if entity @s[tag=tmp.noattack] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
# リセット
 tag @s remove tmp.noattack
 tag @s add tmp.check