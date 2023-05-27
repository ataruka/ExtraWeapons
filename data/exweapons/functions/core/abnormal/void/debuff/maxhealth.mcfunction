# MaxHealthのデバフ
attribute @s generic.max_health modifier remove CF-1-9CB1-0-6
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv5] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-48%" -0.48 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv5] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv4] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-37%" -0.37 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv4] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv3] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-24%" -0.24 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv3] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv4
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv2] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-18%" -0.18 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv2] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv3
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv1] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-12%" -0.12 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv1] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv2
execute unless entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv1] run attribute @s generic.max_health modifier add CF-1-9CB1-0-6 "状態異常-虚弱状態 最大HP-8%" -0.08 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidMaxHealthLv1] run tag @s add ExWeapons.Abnormal.voidMaxHealthLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidMaxHealthTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidMaxHealthTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidMaxHealthTick 300
particle minecraft:dust 0 0.5 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force