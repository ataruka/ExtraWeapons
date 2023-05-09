 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread3/spread_ice
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target] at @s run damage @s 12 minecraft:freeze
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2