execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute if entity @s[type=player] run damage @s 15 minecraft:lava
execute if entity @s[type=!player] run damage @s 45 minecraft:lava