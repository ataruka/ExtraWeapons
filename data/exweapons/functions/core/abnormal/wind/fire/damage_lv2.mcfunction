 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread2/spread_fire
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,type=player] at @s run damage @s 2.6 minecraft:in_fire
 execute as @e[tag=tmp.target,type=!player] at @s run damage @s 8 minecraft:in_fire
 playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 1