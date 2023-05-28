 scoreboard players set $Spread ExWeapons.rng 1
 function exweapons:core/particle/abnormal/wind/spread3/spread_fire
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.targetn
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 scoreboard players set @s ExWeapons.damagerng 50
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $Damageid ExWeapons.rng 3
 data modify storage score_damage: Argument.DamageType set value "Fire"
 function exweapons:core/damage/
 playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 1