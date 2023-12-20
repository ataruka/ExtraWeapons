# Last記録
scoreboard players set $HealthMul ExWeapons.rng 0
execute store result score $HealthMul ExWeapons.rng run attribute @s generic.max_health modifier value get 6B-1-9CB1-0-1 1000
scoreboard players set $AttackDamageMul ExWeapons.rng 0
execute store result score $AttackDamageMul ExWeapons.rng run attribute @s generic.attack_damage modifier value get 6C-1-9CB1-0-1 1000
scoreboard players set $ArmorMul ExWeapons.rng 0
execute store result score $ArmorMul ExWeapons.rng run attribute @s generic.armor modifier value get 6D-1-9CB1-0-1 1000
scoreboard players set $ArmorToughnessMul ExWeapons.rng 0
execute store result score $ArmorToughnessMul ExWeapons.rng run attribute @s generic.armor_toughness modifier value get 6E-1-9CB1-0-1 1000
scoreboard players set $KnockbackResistanceMul ExWeapons.rng 0
execute store result score $KnockbackResistanceMul ExWeapons.rng run attribute @s generic.knockback_resistance modifier value get 6F-1-9CB1-0-1 1000
scoreboard players set $MovementSpeed ExWeapons.rng 0
execute store result score $MovementSpeed ExWeapons.rng run attribute @s generic.movement_speed modifier value get 70-1-9CB1-0-1 1000
scoreboard players set $AttackSpeed ExWeapons.rng 0
execute store result score $AttackSpeed ExWeapons.rng run attribute @s generic.attack_speed modifier value get 71-1-9CB1-0-1 1000