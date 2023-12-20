
#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.voidTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.voidTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.voidTick=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run particle minecraft:dust 0.086 0 0.188 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#実行

execute as @a[scores={ExWeapons.Abnormal.voidTriggerTick=1..,ExWeapons.Abnormal.voidTick=0..}] at @s run function exweapons:core/abnormal/void/run
execute as @e[nbt={HurtTime:10s},scores={ExWeapons.Abnormal.voidTick=0..},type=!player,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/abnormal/void/run
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 1]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidArmorTick matches 1.. run attribute @s generic.armor modifier remove CF-1-9CB1-0-1
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 2]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidAttackSpeedTick matches 1.. run attribute @s generic.attack_speed modifier remove CF-1-9CB1-0-2
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 3]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidAttackSpeedTick matches 1.. run attribute @s generic.follow_range modifier remove CF-1-9CB1-0-3
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 4]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidAttackTick matches 1.. run attribute @s generic.attack_damage modifier remove CF-1-9CB1-0-4
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 5]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidKBResistTick matches 1.. run attribute @s generic.knockback_resistance modifier remove CF-1-9CB1-0-5
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 6]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidMaxHealthTick matches 1.. run attribute @s generic.max_health modifier remove CF-1-9CB1-0-6
execute as @e[nbt={Attributes:[{Modifiers:[{UUID:[I; 207, 105649, 0, 7]}]}]},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] unless score @s ExWeapons.Abnormal.voidMoveTick matches 1.. run attribute @s generic.movement_speed modifier remove CF-1-9CB1-0-7
#clear
execute as @e[scores={ExWeapons.Abnormal.voidArmorTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/armor_reset
execute as @e[scores={ExWeapons.Abnormal.voidAttackSpeedTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/attackspeed_reset
execute as @e[scores={ExWeapons.Abnormal.voidAttackTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/attackdamage_reset
execute as @e[scores={ExWeapons.Abnormal.voidKBResistTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/kbresistance_reset
execute as @e[scores={ExWeapons.Abnormal.voidMaxHealthTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/maxhealth_reset
execute as @e[scores={ExWeapons.Abnormal.voidMoveTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/debuff/movement_reset
execute as @e[scores={ExWeapons.Abnormal.voidTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] run function exweapons:core/abnormal/void/remove
scoreboard players reset @e[scores={ExWeapons.Abnormal.voidTriggerTick=-2147483648..2147483647},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.Abnormal.voidTriggerTick