scoreboard players add @s ExWeapons.concat.kill 1
execute if entity @s[scores={ExWeapons.concat.kill=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={ExWeapons.concat.kill=2..}]