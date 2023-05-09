scoreboard players add @s ExWeapons.textEntity.kill 1
execute if entity @s[scores={ExWeapons.textEntity.kill=40..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={ExWeapons.textEntity.kill=40..}]