execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute if entity @s[type=player] run damage @s 10 minecraft:lava
execute if entity @s[type=!player] run damage @s 30 minecraft:lava