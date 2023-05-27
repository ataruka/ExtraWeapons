# 実行
 execute store result score $food ExWeapons.rng run data get entity @s foodLevel
 execute store result score $health ExWeapons.rng run data get entity @s Health
 execute unless score $health ExWeapons.rng matches 20.. run tag @s add exweapons.instant_respawn_anchor.failure
 execute unless score $food ExWeapons.rng matches 20.. run tag @s add exweapons.instant_respawn_anchor.failure
 execute unless entity @s[tag=exweapons.instant_respawn_anchor.failure] run function exweapons:core/item/instant_respawn_anchor/2.run
 tellraw @s[tag=exweapons.instant_respawn_anchor.failure] {"translate": "chatlog.exweapons.instant_respawn_anchor_failure","color": "red"}
 playsound block.note_block.bit master @s[tag=exweapons.instant_respawn_anchor.failure] ~ ~ ~ 2 0.5
 playsound block.note_block.bit master @s[tag=exweapons.instant_respawn_anchor.failure] ~ ~ ~ 2 0.5
 playsound block.note_block.bit master @s[tag=exweapons.instant_respawn_anchor.failure] ~ ~ ~ 2 0.5
 tag @s remove exweapons.instant_respawn_anchor.failure