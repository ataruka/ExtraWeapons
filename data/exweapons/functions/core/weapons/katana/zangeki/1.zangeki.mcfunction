#斬撃処理
 execute anchored eyes rotated ~ ~ run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["exweapons.katana.zangeki","exweapons.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959}
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ^ ^ ^2 ~ 0
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.OwnerUUID0 = @s ExWeapons.PlayerUUID0
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.OwnerUUID1 = @s ExWeapons.PlayerUUID1
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.OwnerUUID2 = @s ExWeapons.PlayerUUID2
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.OwnerUUID3 = @s ExWeapons.PlayerUUID3
 scoreboard players set @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.katana.zangekitick 10
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2.damage
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3.tp
 tag @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] remove exweapons.armor_set