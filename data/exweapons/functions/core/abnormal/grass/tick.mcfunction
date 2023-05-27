#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.grassTick=1..}] ExWeapons.Abnormal.grassTick 1
scoreboard players remove @e[scores={ExWeapons.Abnormal.grassThunderTick=1..}] ExWeapons.Abnormal.grassThunderTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..}] at @s run particle minecraft:dust 0.106 0.702 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#run
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=0..},tag=ExWeapons.Abnormal.grassThunderLv1] run attribute @s generic.follow_range modifier add CD-1-9CB1-0-1 "状態異常[草+雷] 探索範囲-60%" -0.5 multiply
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=0..},tag=ExWeapons.Abnormal.grassThunderLv2] run attribute @s generic.follow_range modifier add CD-1-9CB1-0-2 "状態異常[草+雷] 探索範囲-80%" -0.7 multiply
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=0..},tag=ExWeapons.Abnormal.grassThunderLv3] run attribute @s generic.follow_range modifier add CD-1-9CB1-0-3 "状態異常[草+雷] 探索範囲-95%" -0.95 multiply
execute as @e[tag=!ExWeapons.Abnormal.grassThunderLv1,nbt={Attributes:[{Modifiers:[{UUID:[I; 205, 105649, 0, 1]}]}]}] run attribute @s generic.follow_range modifier remove CD-1-9CB1-0-1
execute as @e[tag=!ExWeapons.Abnormal.grassThunderLv2,nbt={Attributes:[{Modifiers:[{UUID:[I; 205, 105649, 0, 2]}]}]}] run attribute @s generic.follow_range modifier remove CD-1-9CB1-0-2
execute as @e[tag=!ExWeapons.Abnormal.grassThunderLv3,nbt={Attributes:[{Modifiers:[{UUID:[I; 205, 105649, 0, 3]}]}]}] run attribute @s generic.follow_range modifier remove CD-1-9CB1-0-3
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=0..}] run effect give @s blindness 3 25 true
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=0..}] run effect give @s darkness 3 25 true
#実行-火
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv3,predicate=exweapons:is_on_fire] at @s run function exweapons:core/abnormal/grass/damage_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv2,predicate=exweapons:is_on_fire] at @s run function exweapons:core/abnormal/grass/damage_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv1,predicate=exweapons:is_on_fire] at @s run function exweapons:core/abnormal/grass/damage_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},predicate=exweapons:is_on_fire] run function exweapons:core/abnormal/grass/remove

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.fireTick=1..},tag=ExWeapons.Abnormal.grassLv3] at @s run function exweapons:core/abnormal/grass/damage_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.fireTick=1..},tag=ExWeapons.Abnormal.grassLv2] at @s run function exweapons:core/abnormal/grass/damage_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.fireTick=1..},tag=ExWeapons.Abnormal.grassLv1] at @s run function exweapons:core/abnormal/grass/damage_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.fireTick=1..}] run function exweapons:core/abnormal/grass/remove
#実行-水
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv3,predicate=exweapons:in_water] at @s run function exweapons:core/abnormal/grass/weak_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv2,predicate=exweapons:in_water] at @s run function exweapons:core/abnormal/grass/weak_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv1,predicate=exweapons:in_water] at @s run function exweapons:core/abnormal/grass/weak_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},predicate=exweapons:in_water] run function exweapons:core/abnormal/grass/remove

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.grassLv3] at @s run function exweapons:core/abnormal/grass/weak_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.grassLv2] at @s run function exweapons:core/abnormal/grass/weak_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.waterTick=1..},tag=ExWeapons.Abnormal.grassLv1] at @s run function exweapons:core/abnormal/grass/weak_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.waterTick=1..}] run function exweapons:core/abnormal/grass/remove
#実行-雷
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.thunderTick=1..},tag=ExWeapons.Abnormal.grassLv3] at @s run function exweapons:core/abnormal/grass/thunder_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.thunderTick=1..},tag=ExWeapons.Abnormal.grassLv2] at @s run function exweapons:core/abnormal/grass/thunder_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.thunderTick=1..},tag=ExWeapons.Abnormal.grassLv1] at @s run function exweapons:core/abnormal/grass/thunder_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..,ExWeapons.Abnormal.thunderTick=1..}] run function exweapons:core/abnormal/grass/remove

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv3] at @s if entity @e[distance=..5,type=lightning_bolt] at @s run function exweapons:core/abnormal/grass/thunder_3
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv2] at @s if entity @e[distance=..5,type=lightning_bolt] at @s run function exweapons:core/abnormal/grass/thunder_2
execute as @e[scores={ExWeapons.Abnormal.grassTick=1..},tag=ExWeapons.Abnormal.grassLv1] at @s if entity @e[distance=..5,type=lightning_bolt] at @s run function exweapons:core/abnormal/grass/thunder_1

execute as @e[scores={ExWeapons.Abnormal.grassTick=1..}] at @s if entity @e[distance=..5,type=lightning_bolt] run function exweapons:core/abnormal/grass/remove

#clear
execute as @e[scores={ExWeapons.Abnormal.grassTick=..0}] run function exweapons:core/abnormal/grass/remove
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=..0}] run tag @s remove ExWeapons.Abnormal.grassThunderLv1
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=..0}] run tag @s remove ExWeapons.Abnormal.grassThunderLv2
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=..0}] run tag @s remove ExWeapons.Abnormal.grassThunderLv3
execute as @e[scores={ExWeapons.Abnormal.grassThunderTick=..0}] run scoreboard players reset @s ExWeapons.Abnormal.grassThunderTick