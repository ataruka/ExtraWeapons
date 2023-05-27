 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread1/spread_thunder
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,type=player] at @s run damage @s 1 minecraft:lightning_bolt
 execute as @e[tag=tmp.target,type=!player] at @s run damage @s 3 minecraft:lightning_bolt
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2