scoreboard players remove $CommandPosition ExWeapons.rng 1
execute if score $CommandPosition ExWeapons.rng matches 0 run function exweapons:core/other/concat/
execute unless score $CommandPosition ExWeapons.rng matches 0 positioned ~ ~ ~1 run function exweapons:core/other/concat/position_set
