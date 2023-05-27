 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread3/spread_fire
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute as @e[tag=tmp.target,type=player] at @s run damage @s 4 minecraft:dry_out
 execute as @e[tag=tmp.target,type=!player] at @s run damage @s 12 minecraft:dry_out
 playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 1