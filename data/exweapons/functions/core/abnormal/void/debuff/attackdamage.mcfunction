# attackDamageのデバフ
attribute @s generic.attack_damage modifier remove CF-1-9CB1-0-4
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv5] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-45%" -0.45 multiply
#-------------------------------------------------------------------------------------------------------------------
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv4] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-37%" -0.47 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv4] run tag @s add ExWeapons.Abnormal.voidAttackLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv3] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-31%" -0.31 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv3] run tag @s add ExWeapons.Abnormal.voidAttackLv4
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv2] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-25%" -0.25 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv2] run tag @s add ExWeapons.Abnormal.voidAttackLv3
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-18%" -0.18 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run tag @s add ExWeapons.Abnormal.voidAttackLv2
execute unless entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run attribute @s generic.attack_damage modifier add CF-1-9CB1-0-4 "状態異常-虚弱状態 攻撃力-12%" -0.12 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run tag @s add ExWeapons.Abnormal.voidAttackLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidAttackTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidAttackTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidAttackTick 300
particle minecraft:dust 0.5 0 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force