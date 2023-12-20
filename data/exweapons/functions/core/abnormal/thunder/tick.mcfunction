
#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.thunderTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.thunderTick 1
scoreboard players add @e[scores={ExWeapons.Abnormal.thunderTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.thunderDamageTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.thunderTick=1..}] at @s run particle minecraft:dust 0.431 0 0.702 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#tag
execute as @e[type=lightning_bolt] as @e[distance=..5,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run tag @s add ExWeapons.Abnormal.thunderLv1
execute as @e[type=lightning_bolt] as @e[distance=..5,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run scoreboard players set @s ExWeapons.Abnormal.thunderTick 400
#実行
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv1,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier add CC-1-9CB1-0-1 "状態異常[雷] 防御点-3" -3 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv2,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier add CC-1-9CB1-0-2 "状態異常[雷] 防御点-7" -7 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv3,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier add CC-1-9CB1-0-3 "状態異常[雷] 防御点-13" -13 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv3,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor_toughness modifier add CC-1-9CB1-0-3 "状態異常[雷] 防具強度-5" -5 add
execute as @e[tag=!ExWeapons.Abnormal.thunderLv1,nbt={Attributes:[{Modifiers:[{UUID:[I; 204, 105649, 0, 1]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier remove CC-1-9CB1-0-1
execute as @e[tag=!ExWeapons.Abnormal.thunderLv2,nbt={Attributes:[{Modifiers:[{UUID:[I; 204, 105649, 0, 2]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier remove CC-1-9CB1-0-2
execute as @e[tag=!ExWeapons.Abnormal.thunderLv3,nbt={Attributes:[{Modifiers:[{UUID:[I; 204, 105649, 0, 3]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor modifier remove CC-1-9CB1-0-3
execute as @e[tag=!ExWeapons.Abnormal.thunderLv3,nbt={Attributes:[{Modifiers:[{UUID:[I; 204, 105649, 0, 3]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run attribute @s generic.armor_toughness modifier remove CC-1-9CB1-0-3
#clear
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run scoreboard players reset @s ExWeapons.Abnormal.thunderDamageTick
execute as @e[scores={ExWeapons.Abnormal.thunderTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/thunder/remove