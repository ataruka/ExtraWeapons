# attackSpeedのデバフ
execute if entity @s[type=player] run attribute @s generic.attack_speed modifier remove CF-1-9CB1-0-2
execute if entity @s[type=!player] run attribute @s generic.follow_range modifier remove CF-1-9CB1-0-3
execute if entity @s[type=player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv5] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-68%" -0.68 multiply
execute if entity @s[type=!player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv5] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-80%" -0.80 multiply
#-------------------------------------------------------------------------------------------------------------------
execute if entity @s[type=player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv4] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-46%" -0.46 multiply
execute if entity @s[type=!player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv4] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-72%" -0.72 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv4] run tag @s add ExWeapons.Abnormal.voidAttackSpeedLv5
execute if entity @s[type=player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv3] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-35%" -0.35 multiply
execute if entity @s[type=!player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv3] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-66%" -0.66 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv3] run tag @s add ExWeapons.Abnormal.voidAttackSpeedLv4
execute if entity @s[type=player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv2] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-27%" -0.27 multiply
execute if entity @s[type=!player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv2] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-51%" -0.51 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv2] run tag @s add ExWeapons.Abnormal.voidAttackSpeedLv3
execute if entity @s[type=player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-21%" -0.21 multiply
execute if entity @s[type=!player] if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-43%" -0.43 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run tag @s add ExWeapons.Abnormal.voidAttackSpeedLv2
execute if entity @s[type=player] unless entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run attribute @s generic.attack_speed modifier add CF-1-9CB1-0-2 "状態異常-虚弱状態 攻撃速度-13%" -0.13 multiply
execute if entity @s[type=!player] unless entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run attribute @s generic.follow_range modifier add CF-1-9CB1-0-3 "状態異常-虚弱状態 攻撃速度(探索範囲)-29%" -0.43 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidAttackSpeedLv1] run tag @s add ExWeapons.Abnormal.voidAttackSpeedLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidAttackSpeedTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidAttackSpeedTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidAttackSpeedTick 300
particle minecraft:dust 0.5 0.3 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force