 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread2/spread_grass
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 scoreboard players set @s ExWeapons.damagerng 30
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $Damageid ExWeapons.rng 6
 function exweapons:core/damage/
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2
 playsound minecraft:block.grass.break master @a ~ ~ ~ 2 2