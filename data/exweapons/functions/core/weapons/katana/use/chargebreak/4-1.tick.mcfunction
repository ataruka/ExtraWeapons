execute if score @s ExWeapons.katana.useChargeBreak1 matches 0.. run scoreboard players remove @s ExWeapons.katana.useChargeBreak1 1
execute if score @s ExWeapons.katana.useChargeBreak1 matches ..0 at @s run function exweapons:core/weapons/katana/use/chargebreak/2-1.damage
execute if score @s ExWeapons.katana.useChargeBreak1 matches ..0 run scoreboard players reset @s ExWeapons.katana.useChargeBreak1

execute unless score @s ExWeapons.katana.useChargeBreak1 matches 0.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.5 0.2 1 1 force

execute if score @s ExWeapons.katana.useChargeBreak1.tick matches 0.. run scoreboard players remove @s ExWeapons.katana.useChargeBreak1.tick 1
execute if score @s ExWeapons.katana.useChargeBreak1.tick matches ..0 run scoreboard players reset @s ExWeapons.katana.useChargeBreak1.tick