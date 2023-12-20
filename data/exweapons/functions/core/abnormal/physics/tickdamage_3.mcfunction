 execute store result score $Damage ExWeapons.rng run attribute @s generic.max_health get 100
 scoreboard players operation $Damage ExWeapons.rng /= #5 ExWeapons.rng
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $BypassEPF ExWeapons.rng 1
 scoreboard players set $BypassResistance ExWeapons.rng 1
 scoreboard players set $BypassKB ExWeapons.rng 1
 scoreboard players set $DamageType ExWeapons.rng 7
 scoreboard players set $Damageid ExWeapons.rng 13
 scoreboard players set $isPhysics ExWeapons.rng 1
 scoreboard players set $ArgumentDamageType ExWeapons.rng 1
 function exweapons:core/damage/
 particle falling_lava ~ ~0.8 ~ 0.3 0.05 0.3 1 5 force
 tag @s add ExWeapons.Abnormal.physics_bleeding
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