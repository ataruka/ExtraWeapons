#斬撃のダメージ処理
 tag @s add tmp.damage
 execute as @a if score @s ExWeapons.PlayerUUID0 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID0 if score @s ExWeapons.PlayerUUID1 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID1 if score @s ExWeapons.PlayerUUID2 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID2 if score @s ExWeapons.PlayerUUID3 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID3 run tag @s add tmp.owner
 tag @e remove tmp.damage

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~-1 ~ run tag @e[distance=..1.5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/run
 tag @e remove tmp.target
 tag @e remove tmp.owner