execute if entity @s[scores={ExWeapons.textTrigger=0}] run function exweapons:setting/text/run/0
execute if entity @s[scores={ExWeapons.textTrigger=1}] run function exweapons:setting/text/run/1
execute if entity @s[scores={ExWeapons.textTrigger=2}] run function exweapons:setting/text/run/2

## リセット
scoreboard players set @s ExWeapons.textTrigger -1