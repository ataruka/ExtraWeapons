 function exweapons:core/particle/abnormal/wind/spread3/spread_
 execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..12,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 scoreboard players set $Damage ExWeapons.rng 500
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $Damageid ExWeapons.rng 11
 scoreboard players set $isPhysics ExWeapons.rng 1
 execute if entity @s[scores={ExWeapons.InvulnerabilityTime=0}] run function exweapons:core/damage/
## return
 scoreboard players set $BypassArmor ExWeapons.rng 0
 scoreboard players set $isPhysics ExWeapons.rng 0
 scoreboard players set $ArgumentDamageType ExWeapons.rng 0
 scoreboard players set $BypassInvulnerabilityTime ExWeapons.rng 0
 scoreboard players set $BypassResistance ExWeapons.rng 0
 scoreboard players set $BypassKB ExWeapons.rng 0
 scoreboard players set $BypassEPF ExWeapons.rng 0
 scoreboard players set $DamageType ExWeapons.rng -1
 scoreboard players set $Damageid ExWeapons.rng -1
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2