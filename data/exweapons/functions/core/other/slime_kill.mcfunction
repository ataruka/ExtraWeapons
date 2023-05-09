scoreboard players add @s ExWeapons.slimeMove.kill 1
execute if entity @s[scores={ExWeapons.slimeMove.kill=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={ExWeapons.slimeMove.kill=2..}]