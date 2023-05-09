scoreboard players reset @s ExWeapons.Abnormal.ice.frozenTick
tag @s remove ExWeapons.Abnormal.ice.frozen
execute if entity @s[type=!player] run data merge entity @s {NoAI:0b}
kill @e[type=block_display,limit=1,sort=nearest,distance=..3,tag=exweapons.abnormal.frozen]