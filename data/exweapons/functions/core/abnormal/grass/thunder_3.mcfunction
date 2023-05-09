tag @s add ExWeapons.Abnormal.grassThunderLv3
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
scoreboard players set @s ExWeapons.Abnormal.grassThunderTick 300
effect give @s mining_fatigue 10 3 true
effect give @s darkness 5 3 true