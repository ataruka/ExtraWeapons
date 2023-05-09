#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.iceTick=1..}] ExWeapons.Abnormal.iceTick 1
scoreboard players remove @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] ExWeapons.Abnormal.ice.frozenTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..}] at @s run particle minecraft:dust 0.42 1 0.953 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] at @s run particle minecraft:dust 0.42 1 0.953 1 ~ ~1 ~ 0.2 0.4 0.2 0 3
#実行
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=!player] run attribute @s generic.movement_speed modifier add 9bc14de8-cdd9-43fa-b2ee-a585d066b928 "状態異常[氷] 移動速度-15%" -0.15 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=!player] run attribute @s generic.movement_speed modifier add 38673761-b0c1-4249-b5c5-a3dac3085246 "状態異常[氷] 移動速度-20%" -0.2 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=!player] run attribute @s generic.movement_speed modifier add 0a2cc49f-0cd2-41f5-973c-314e82f7513d "状態異常[氷] 移動速度-40%" -0.4 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=player,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add 9bc14de8-cdd9-43fa-b2ee-a585d066b928 "状態異常[氷] 移動速度-15%" -0.15 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=player,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add 38673761-b0c1-4249-b5c5-a3dac3085246 "状態異常[氷] 移動速度-20%" -0.2 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=player,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add 0a2cc49f-0cd2-41f5-973c-314e82f7513d "状態異常[氷] 移動速度-40%" -0.4 multiply
execute as @e[tag=!ExWeapons.Abnormal.iceLv1] run attribute @s generic.movement_speed modifier remove 9bc14de8-cdd9-43fa-b2ee-a585d066b928
execute as @e[tag=!ExWeapons.Abnormal.iceLv2] run attribute @s generic.movement_speed modifier remove 38673761-b0c1-4249-b5c5-a3dac3085246
execute as @e[tag=!ExWeapons.Abnormal.iceLv3] run attribute @s generic.movement_speed modifier remove 0a2cc49f-0cd2-41f5-973c-314e82f7513d
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run3
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv1,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv2,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv3,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run3
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run3
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv1,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv2,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv3,type=player,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run3

execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] at @s run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=exweapons.abnormal.frozen]
execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] at @s if entity @s[type=!player] run data merge entity @s {NoAI:1b}
execute as @e[type=block_display,tag=exweapons.abnormal.frozen] at @s unless entity @e[distance=..5,tag=ExWeapons.Abnormal.ice.frozen,type=!#exweapons:non_living] run kill @s
#clear
execute as @e[scores={ExWeapons.Abnormal.iceTick=..0}] run function exweapons:core/abnormal/ice/remove
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:is_on_fire] run function exweapons:core/abnormal/ice/remove
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.fireTick=1..}] run function exweapons:core/abnormal/ice/remove

execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=..0}] at @s run function exweapons:core/abnormal/ice/frozen/remove
execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..},predicate=exweapons:is_on_fire] at @s run function exweapons:core/abnormal/ice/frozen/remove
execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..,ExWeapons.Abnormal.fireTick=1..}] at @s run function exweapons:core/abnormal/ice/frozen/remove
