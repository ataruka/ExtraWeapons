#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.physicsTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.physicsTick 1
scoreboard players add @e[scores={ExWeapons.Abnormal.physicsTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.physicsDamageTick 1
#particle
# execute as @e[scores={ExWeapons.Abnormal.physicsTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run particle minecraft:dust 0.953 0.573 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#実行
execute as @e[scores={ExWeapons.Abnormal.physicsDamageTick=40..},tag=ExWeapons.Abnormal.physicsLv1,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/abnormal/physics/tickdamage_1
execute as @e[scores={ExWeapons.Abnormal.physicsDamageTick=40..},tag=ExWeapons.Abnormal.physicsLv2,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/abnormal/physics/tickdamage_2
execute as @e[scores={ExWeapons.Abnormal.physicsDamageTick=40..},tag=ExWeapons.Abnormal.physicsLv3,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/abnormal/physics/tickdamage_3
execute as @e[scores={ExWeapons.Abnormal.physicsDamageTick=..20},tag=ExWeapons.Abnormal.physics_bleeding,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run particle falling_lava ~ ~0.8 ~ 0.3 0.05 0.3 1 3 force
#clear
execute as @e[scores={ExWeapons.Abnormal.physicsDamageTick=40..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run scoreboard players reset @s ExWeapons.Abnormal.physicsDamageTick
execute as @e[scores={ExWeapons.Abnormal.physicsTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/physics/remove