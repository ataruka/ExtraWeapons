execute store result storage attack_track: _ int 1 run scoreboard players get @s ExWeapons.AttackTrack
execute store result storage attack_track: new int 1 store result score @s ExWeapons.AttackTrack run data get entity @s HurtByTimestamp
execute store result storage attack_track: _ byte 1 run data modify storage attack_track: _ set from storage attack_track: new
execute if data storage attack_track: {_:true} store result storage attack_track: _ byte 0 run tag @s add tmp.target