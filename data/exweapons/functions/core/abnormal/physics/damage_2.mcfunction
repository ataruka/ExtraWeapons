 scoreboard players set $Damage ExWeapons.rng 700
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $DamageType ExWeapons.rng 7
 scoreboard players set $Damageid ExWeapons.rng 12
 scoreboard players set $isPhysics ExWeapons.rng 1
 scoreboard players set $ArgumentDamageType ExWeapons.rng 1
 function exweapons:core/damage/
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
 tag @s add ExWeapons.Abnormal.physicsLv2