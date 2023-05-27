#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.iceTick=1..}] ExWeapons.Abnormal.iceTick 1
scoreboard players remove @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] ExWeapons.Abnormal.ice.frozenTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..}] at @s run particle minecraft:dust 0.42 1 0.953 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
execute as @e[scores={ExWeapons.Abnormal.ice.frozenTick=1..}] at @s run particle minecraft:dust 0.42 1 0.953 1 ~ ~1 ~ 0.2 0.4 0.2 0 3
#実行
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=!player] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-1 "状態異常[氷] 移動速度-15%" -0.15 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=!player] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-2 "状態異常[氷] 移動速度-20%" -0.2 multiply
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=!player] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-3 "状態異常[氷] 移動速度-40%" -0.4 multiply
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv1,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-1 "状態異常[氷] 移動速度-15%" -0.15 multiply
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv2,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-2 "状態異常[氷] 移動速度-20%" -0.2 multiply
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},tag=ExWeapons.Abnormal.iceLv3,gamemode=!spectator,gamemode=!creative] run attribute @s generic.movement_speed modifier add CB-1-9CB1-0-3 "状態異常[氷] 移動速度-40%" -0.4 multiply
execute as @e[tag=!ExWeapons.Abnormal.iceLv1,nbt={Attributes:[{Modifiers:[{UUID:[I; 203, 105649, 0, 1]}]}]}] run attribute @s generic.movement_speed modifier remove CB-1-9CB1-0-1
execute as @e[tag=!ExWeapons.Abnormal.iceLv2,nbt={Attributes:[{Modifiers:[{UUID:[I; 203, 105649, 0, 2]}]}]}] run attribute @s generic.movement_speed modifier remove CB-1-9CB1-0-2
execute as @e[tag=!ExWeapons.Abnormal.iceLv3,nbt={Attributes:[{Modifiers:[{UUID:[I; 203, 105649, 0, 3]}]}]}] run attribute @s generic.movement_speed modifier remove CB-1-9CB1-0-3

execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv1,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv2,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv3,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run3
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv1,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv2,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @e[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv3,type=!player] at @s run function exweapons:core/abnormal/ice/frozen/run3

execute as @a[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv1,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv2,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.iceLv3,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run3
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv1,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv2,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run2
execute as @a[scores={ExWeapons.Abnormal.iceTick=1..},predicate=exweapons:in_water,tag=ExWeapons.Abnormal.iceLv3,gamemode=!spectator,gamemode=!creative] at @s run function exweapons:core/abnormal/ice/frozen/run3

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
