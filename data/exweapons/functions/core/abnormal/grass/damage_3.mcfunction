execute at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0 100 force
execute if entity @s[type=player] run damage @s 20 minecraft:lava
execute if entity @s[type=!player] run damage @s 60 minecraft:lava