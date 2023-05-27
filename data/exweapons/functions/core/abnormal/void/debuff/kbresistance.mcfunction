# KnockBackResistanceのデバフ
attribute @s generic.knockback_resistance modifier remove CF-1-9CB1-0-5
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv5] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-68%" -0.68 multiply
#-------------------------------------------------------------------------------------------------------------------
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv4] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-46%" -0.46 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv4] run tag @s add ExWeapons.Abnormal.voidKBResistanceLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv3] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-35%" -0.35 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv3] run tag @s add ExWeapons.Abnormal.voidKBResistanceLv4
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv2] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-27%" -0.27 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv2] run tag @s add ExWeapons.Abnormal.voidKBResistanceLv3
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv1] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-21%" -0.21 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv1] run tag @s add ExWeapons.Abnormal.voidKBResistanceLv2
execute unless entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv1] run attribute @s generic.knockback_resistance modifier add CF-1-9CB1-0-5 "状態異常-虚弱状態 KB耐性-13%" -0.13 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidKBResistanceLv1] run tag @s add ExWeapons.Abnormal.voidKBResistanceLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidKBResistTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidKBResistTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidKBResistTick 300
particle minecraft:dust 0.5 0.5 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force