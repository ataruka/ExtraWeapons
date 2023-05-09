#斬撃処理
 execute anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["exweapons.katana.zangeki3","exweapons.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute anchored eyes rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ^ ^ ^ ~ 0
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.Attacker = @s OhMyDatID
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.katana.ZangekiTick = $katana_ZangekiDistance ExWeapons.setting
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2-3.damage
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3-3.tp
 tag @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] remove exweapons.armor_set

 execute anchored eyes rotated ~ 0 run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["exweapons.katana.zangeki3-2","exweapons.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute anchored eyes rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ^ ^ ^ ~ 0
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.Attacker = @s OhMyDatID
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.katana.ZangekiTick = $katana_ZangekiDistance ExWeapons.setting
 scoreboard players add @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.katana.Zangeki3Time 0
 tag @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] remove exweapons.armor_set

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 scoreboard players add $Tmp ExWeapons.rng 7
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200
 data merge storage exweapons: {item:{weapon:{nbt:{Attack:3}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
 scoreboard players operation @s ExWeapons.katana.ZangekiReturn = $katana_ZangekiReturn ExWeapons.setting

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 1 0
playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 2 0
tag @s add tmp.check