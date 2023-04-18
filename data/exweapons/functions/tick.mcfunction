advancement grant @a only exweapons:start
execute as @a store result score @s ExWeapons.PlayerUUID0 run data get entity @s UUID[0]
execute as @a store result score @s ExWeapons.PlayerUUID1 run data get entity @s UUID[1]
execute as @a store result score @s ExWeapons.PlayerUUID2 run data get entity @s UUID[2]
execute as @a store result score @s ExWeapons.PlayerUUID3 run data get entity @s UUID[3]
function exweapons:core/trigger/tick
function exweapons:core/weapons/tick