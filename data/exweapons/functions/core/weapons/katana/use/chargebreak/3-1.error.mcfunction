execute store result score $Tmp ExWeapons.rng run data get entity @s SelectedItem.tag.exweapons.weapon.ChargePoint
execute if entity @s[type=player] run tellraw @s [{"text": "[ExWeapons]ERROR>> ","color": "red"},{"translate":"chatlog.exweapons.cp_is_insufficient","color": "red"},{"text": "(","color": "red"},{"score":{"name":"$Tmp","objective":"ExWeapons.rng"},"color": "red"},{"text": "/200)","color": "red"}]
scoreboard players reset $Tmp ExWeapons.rng

playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.5