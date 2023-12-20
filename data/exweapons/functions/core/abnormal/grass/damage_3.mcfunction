execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute if entity @s[type=player] run scoreboard players set $Damage ExWeapons.rng 2000
 scoreboard players set $Damageid ExWeapons.rng 4
 scoreboard players set $ArgumentDamageType ExWeapons.rng 1
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
execute if entity @s[type=!player] run scoreboard players set $Damage ExWeapons.rng 6000
 scoreboard players set $Damageid ExWeapons.rng 4
 scoreboard players set $ArgumentDamageType ExWeapons.rng 1
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