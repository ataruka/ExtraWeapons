 scoreboard players set @s ExWeapons.damagerng 10
 scoreboard players set $BypassArmor ExWeapons.rng 1
 scoreboard players set $Damageid ExWeapons.rng 1
 data modify storage score_damage: Argument.DamageType set value "Fire"
 function exweapons:core/damage/
 playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 1