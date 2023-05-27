#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.fireTick=1..}] ExWeapons.Abnormal.fireTick 1
scoreboard players add @e[scores={ExWeapons.Abnormal.fireTick=1..}] ExWeapons.Abnormal.fireDamageTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.fireTick=1..}] at @s run particle minecraft:dust 0.953 0.573 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#実行
execute as @e[scores={ExWeapons.Abnormal.fireDamageTick=20..},tag=ExWeapons.Abnormal.fireLv1] at @s run function exweapons:core/abnormal/fire/damage_1
execute as @e[scores={ExWeapons.Abnormal.fireDamageTick=20..},tag=ExWeapons.Abnormal.fireLv2] at @s run function exweapons:core/abnormal/fire/damage_2
execute as @e[scores={ExWeapons.Abnormal.fireDamageTick=20..},tag=ExWeapons.Abnormal.fireLv3] at @s run function exweapons:core/abnormal/fire/damage_3
#clear
execute as @e[scores={ExWeapons.Abnormal.fireDamageTick=20..}] run scoreboard players reset @s ExWeapons.Abnormal.fireDamageTick
execute as @e[scores={ExWeapons.Abnormal.fireTick=..0}] run function exweapons:core/abnormal/fire/remove
execute as @e[scores={ExWeapons.Abnormal.fireTick=1..},predicate=exweapons:in_water] run function exweapons:core/abnormal/fire/remove