execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute if entity @s[type=player] run scoreboard players set @s ExWeapons.damagerng 20
 scoreboard players set $Damageid ExWeapons.rng 4
 data modify storage score_damage: Argument.DamageType set value "Fire"
 function exweapons:core/damage/
execute if entity @s[type=!player] run scoreboard players set @s ExWeapons.damagerng 60
 scoreboard players set $Damageid ExWeapons.rng 4
 data modify storage score_damage: Argument.DamageType set value "Fire"
 function exweapons:core/damage/