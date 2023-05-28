 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread2/spread_thunder
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..8,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 scoreboard players set @s ExWeapons.damagerng 30
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $Damageid ExWeapons.rng 9
 function exweapons:core/damage/
 playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2