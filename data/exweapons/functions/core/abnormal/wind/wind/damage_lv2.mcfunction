 function exweapons:core/particle/abnormal/wind/spread2/spread_
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,type=player] at @s run damage @s 2.6 minecraft:sonic_boom
 execute as @e[tag=tmp.target,type=!player] at @s run damage @s 8 minecraft:sonic_boom
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2