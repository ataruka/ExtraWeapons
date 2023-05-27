
#スコア色々
scoreboard players remove @e[scores={ExWeapons.Abnormal.waterTick=1..}] ExWeapons.Abnormal.waterTick 1
scoreboard players add @e[scores={ExWeapons.Abnormal.waterTick=1..}] ExWeapons.Abnormal.waterDamageTick 1
#particle
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..}] at @s run particle minecraft:dust 0 0.102 1 1 ~ ~1 ~ 0.2 0.4 0.2 0 1
#実行
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv1] run effect give @s hunger 2 100 true
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv2] run effect give @s hunger 2 170 true
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv3] run effect give @s hunger 2 255 true

execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv1] run attribute @s generic.knockback_resistance modifier add C9-1-9CB1-0-1 "状態異常[水] ノックバック耐性-25%" -0.25 multiply
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv2] run attribute @s generic.knockback_resistance modifier add C9-1-9CB1-0-2 "状態異常[水] ノックバック耐性-45%" -0.45 multiply
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..},tag=ExWeapons.Abnormal.waterLv3] run attribute @s generic.knockback_resistance modifier add C9-1-9CB1-0-3 "状態異常[水] ノックバック耐性-80%" -0.80 multiply
execute as @e[tag=!ExWeapons.Abnormal.waterLv1,nbt={Attributes:[{Modifiers:[{UUID:[I; 201, 105649, 0, 1]}]}]}] run attribute @s generic.knockback_resistance modifier remove C9-1-9CB1-0-1
execute as @e[tag=!ExWeapons.Abnormal.waterLv2,nbt={Attributes:[{Modifiers:[{UUID:[I; 201, 105649, 0, 2]}]}]}] run attribute @s generic.knockback_resistance modifier remove C9-1-9CB1-0-2
execute as @e[tag=!ExWeapons.Abnormal.waterLv3,nbt={Attributes:[{Modifiers:[{UUID:[I; 201, 105649, 0, 3]}]}]}] run attribute @s generic.knockback_resistance modifier remove C9-1-9CB1-0-3

execute as @e[scores={ExWeapons.Abnormal.waterTick=1..}] run effect clear @s regeneration
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..}] run effect clear @s instant_health
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..}] run effect clear @s resistance
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..}] run effect give @s fire_resistance 1 0 true

#clear
execute as @e[scores={ExWeapons.Abnormal.waterDamageTick=20..}] run scoreboard players reset @s ExWeapons.Abnormal.waterDamageTick
execute as @e[scores={ExWeapons.Abnormal.waterTick=..0}] run function exweapons:core/abnormal/water/remove
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..},predicate=exweapons:is_on_fire] run function exweapons:core/abnormal/water/remove
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..},predicate=exweapons:is_running] run function exweapons:core/other/random_get
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..},predicate=exweapons:is_running] run scoreboard players operation @s ExWeapons.rnd %= #100 ExWeapons.rng
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..,ExWeapons.rnd=0..4},tag=ExWeapons.Abnormal.waterLv1] run scoreboard players remove @s ExWeapons.Abnormal.waterTick 40
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..,ExWeapons.rnd=0..2},tag=ExWeapons.Abnormal.waterLv2] run scoreboard players remove @s ExWeapons.Abnormal.waterTick 40
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..,ExWeapons.rnd=0},tag=ExWeapons.Abnormal.waterLv3] run scoreboard players remove @s ExWeapons.Abnormal.waterTick 40
execute as @e[scores={ExWeapons.Abnormal.waterTick=1..,ExWeapons.rnd=0..}] run scoreboard players reset @s ExWeapons.rnd