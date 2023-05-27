# armorのデバフ
attribute @s generic.armor modifier remove CF-1-9CB1-0-1
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv5] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-63%" -0.63 multiply
#-------------------------------------------------------------------------------------------------------------------
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv4] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-51%" -0.51 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv4] run tag @s add ExWeapons.Abnormal.voidArmorLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv3] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-42%" -0.42 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv3] run tag @s add ExWeapons.Abnormal.voidArmorLv4
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv2] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-36%" -0.36 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv2] run tag @s add ExWeapons.Abnormal.voidArmorLv3
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-24%" -0.24 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run tag @s add ExWeapons.Abnormal.voidArmorLv2
execute unless entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run attribute @s generic.armor modifier add CF-1-9CB1-0-1 "状態異常-虚弱状態 防御力-18%" -0.18 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run tag @s add ExWeapons.Abnormal.voidArmorLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidArmorTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidArmorTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidArmorTick 300
particle minecraft:dust 0.5 0.5 0.5 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force