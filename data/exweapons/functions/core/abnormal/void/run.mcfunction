# Random
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #6 ExWeapons.rng
execute if entity @s[scores={ExWeapons.rnd=0}] run function exweapons:core/abnormal/void/debuff/armor
execute if entity @s[scores={ExWeapons.rnd=1}] run function exweapons:core/abnormal/void/debuff/attackspeed
execute if entity @s[scores={ExWeapons.rnd=2}] run function exweapons:core/abnormal/void/debuff/attackdamage
execute if entity @s[scores={ExWeapons.rnd=3}] run function exweapons:core/abnormal/void/debuff/kbresistance
execute if entity @s[scores={ExWeapons.rnd=4}] run function exweapons:core/abnormal/void/debuff/maxhealth
execute if entity @s[scores={ExWeapons.rnd=5}] run function exweapons:core/abnormal/void/debuff/movement
scoreboard players reset @s ExWeapons.rnd