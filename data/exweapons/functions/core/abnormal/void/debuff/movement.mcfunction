# Movementのデバフ
attribute @s generic.movement_speed modifier remove CF-1-9CB1-0-7
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv5] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-73%" -0.73 multiply
#-------------------------------------------------------------------------------------------------------------------
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv4] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-68%" -0.68 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv4] run tag @s add ExWeapons.Abnormal.voidMovementLv5
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv3] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-54%" -0.54 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv3] run tag @s add ExWeapons.Abnormal.voidMovementLv4
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv2] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-42%" -0.42 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv2] run tag @s add ExWeapons.Abnormal.voidMovementLv3
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv1] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-31%" -0.31 multiply
execute if entity @s[tag=ExWeapons.Abnormal.voidMovementLv1] run tag @s add ExWeapons.Abnormal.voidMovementLv2
execute unless entity @s[tag=ExWeapons.Abnormal.voidMovementLv1] run attribute @s generic.movement_speed modifier add CF-1-9CB1-0-7 "状態異常-虚弱状態 移動速度-24%" -0.24 multiply
execute unless entity @s[tag=ExWeapons.Abnormal.voidMovementLv1] run tag @s add ExWeapons.Abnormal.voidMovementLv1
execute if entity @s[tag=ExWeapons.Abnormal.voidLv1] run scoreboard players set @s ExWeapons.Abnormal.voidMoveTick 140
execute if entity @s[tag=ExWeapons.Abnormal.voidLv2] run scoreboard players set @s ExWeapons.Abnormal.voidMoveTick 200
execute if entity @s[tag=ExWeapons.Abnormal.voidLv3] run scoreboard players set @s ExWeapons.Abnormal.voidMoveTick 300
particle minecraft:dust 0 0.5 0.5 1 ~ ~1 ~ 0.25 0.5 0.25 1 100 force