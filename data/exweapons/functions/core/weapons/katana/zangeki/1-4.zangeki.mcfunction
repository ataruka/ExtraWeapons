#斬撃処理
 execute as @s at @s run function exweapons:core/weapons/katana/zangeki/5.tpgiri
 execute as @s at @s run function exweapons:core/weapons/katana/zangeki/4.zangekitp
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 scoreboard players add $Tmp ExWeapons.rng 12
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200
 execute store result storage exweapons: item.weapon.nbt.ChargePoint int 1 run scoreboard players get $Tmp ExWeapons.rng
 data merge storage exweapons: {item:{weapon:{nbt:{Attack:0,Charged:1}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s SelectedItem.tag.CustomModelData
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s HandItems[0].tag.CustomModelData
 data merge storage exweapons: {item:{weapon:{nbt:{CustomModelData:100041}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_custom-model-data
 data remove storage exweapons: item.weapon.nbt

 item modify entity @s weapon.mainhand exweapons:enchantments/kirakira
 
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
playsound entity.enderman.teleport master @a ~ ~ ~ 1 1 0
tag @s add tmp.check