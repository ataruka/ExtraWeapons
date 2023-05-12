execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute if entity @s[type=player] run damage @s 10 minecraft:lava
execute if entity @s[type=!player] run damage @s 30 minecraft:lava