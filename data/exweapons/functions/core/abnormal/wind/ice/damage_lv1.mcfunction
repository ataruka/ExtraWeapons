 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread1/spread_ice
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,type=player] at @s run damage @s 1 minecraft:freeze
 execute as @e[tag=tmp.target,type=!player] at @s run damage @s 3 minecraft:freeze
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.glass.break master @a ~ ~ ~ 2 2