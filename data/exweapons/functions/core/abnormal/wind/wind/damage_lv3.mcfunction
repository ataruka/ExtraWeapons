 function exweapons:core/particle/abnormal/wind/spread3/spread_
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target] at @s run damage @s 12 minecraft:sonic_boom
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2