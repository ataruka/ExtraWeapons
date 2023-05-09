
#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.thunderTick=1..}] ExWeapons.Abnormal.thunderTick 1
scoreboard players add @e[scores={ExWeapons.Abnormal.thunderTick=1..}] ExWeapons.Abnormal.thunderDamageTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.thunderTick=1..}] at @s run particle minecraft:dust 0.431 0 0.702 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#tag
execute as @e[type=!#exweapons:non_living] at @s if entity @e[distance=..5,type=lightning_bolt] run tag @s add ExWeapons.Abnormal.thunderLv1
execute as @e[type=!#exweapons:non_living] at @s if entity @e[distance=..5,type=lightning_bolt] run scoreboard players set @s ExWeapons.Abnormal.thunderTick 400
#実行
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv1] run attribute @s generic.armor modifier add 6fd3a6a7-fb4c-41cd-96c3-33b7d1c27849 "状態異常[雷] 防御点-3" -3 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv2] run attribute @s generic.armor modifier add 9a41b47a-9f90-4530-8e42-df7633bc0b7d "状態異常[雷] 防御点-7" -7 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv3] run attribute @s generic.armor modifier add b5ab1045-be76-4eba-a680-82555c18818c "状態異常[雷] 防御点-13" -13 add
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..},tag=ExWeapons.Abnormal.thunderLv3] run attribute @s generic.armor_toughness modifier add 3bb5d6b1-5885-4e45-a724-30d649dcbb8b "状態異常[雷] 防具強度-5" -5 add
execute as @e[tag=!ExWeapons.Abnormal.thunderLv1] run attribute @s generic.armor modifier remove 6fd3a6a7-fb4c-41cd-96c3-33b7d1c27849
execute as @e[tag=!ExWeapons.Abnormal.thunderLv2] run attribute @s generic.armor modifier remove 9a41b47a-9f90-4530-8e42-df7633bc0b7d
execute as @e[tag=!ExWeapons.Abnormal.thunderLv3] run attribute @s generic.armor modifier remove b5ab1045-be76-4eba-a680-82555c18818c
execute as @e[tag=!ExWeapons.Abnormal.thunderLv3] run attribute @s generic.armor_toughness modifier remove 3bb5d6b1-5885-4e45-a724-30d649dcbb8b
#clear
execute as @e[scores={ExWeapons.Abnormal.thunderDamageTick=20..}] run scoreboard players reset @s ExWeapons.Abnormal.thunderDamageTick
execute as @e[scores={ExWeapons.Abnormal.thunderTick=..0}] run function exweapons:core/abnormal/thunder/remove