#リセット
scoreboard players set @s ExWeapons.XFacing 0
scoreboard players set @s ExWeapons.ZFacing 0
tag @e remove ExWeapons.Facing
#tag付与
tag @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=ExWeapons.forcheck] add ExWeapons.Facing
tag @s add ExWeapons.Check
#X軸
execute as @e[tag=ExWeapons.Facing] store result score $TEMP ExWeapons.varA run data get entity @s Pos[0] 1000
execute as @e[tag=ExWeapons.Facing] store result score $TEMP ExWeapons.varB run data get entity @s Pos[0] 1000
execute as @e[tag=ExWeapons.Facing] run scoreboard players operation $TEMP ExWeapons.varB -= @p[tag=ExWeapons.Check] ExWeapons.PrevPosX
execute as @e[tag=ExWeapons.Facing] run scoreboard players operation $TEMP ExWeapons.varA += $TEMP ExWeapons.varB
execute as @e[tag=ExWeapons.Facing] store result entity @s Pos[0] double 0.001 run scoreboard players get $TEMP ExWeapons.varA
#Z軸
execute as @e[tag=ExWeapons.Facing] store result score $TEMP ExWeapons.varA run data get entity @s Pos[2] 1000
execute as @e[tag=ExWeapons.Facing] store result score $TEMP ExWeapons.varB run data get entity @s Pos[2] 1000
execute as @e[tag=ExWeapons.Facing] run scoreboard players operation $TEMP ExWeapons.varB -= @p[tag=ExWeapons.Check] ExWeapons.PrevPosZ
execute as @e[tag=ExWeapons.Facing] run scoreboard players operation $TEMP ExWeapons.varA += $TEMP ExWeapons.varB
execute as @e[tag=ExWeapons.Facing] store result entity @s Pos[2] double 0.001 run scoreboard players get $TEMP ExWeapons.varA
#検知用のスコア設定
execute as @s at @s anchored eyes rotated ~ 0 positioned ^10.00001 ^ ^ if entity @e[distance=..10,tag=ExWeapons.Facing] run scoreboard players set @s ExWeapons.XFacing -1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^-10.00001 ^ ^ if entity @e[distance=..10,tag=ExWeapons.Facing] run scoreboard players set @s ExWeapons.XFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10.00001 if entity @e[distance=..10,tag=ExWeapons.Facing] run scoreboard players set @s ExWeapons.ZFacing 1
execute as @s at @s anchored eyes rotated ~ 0 positioned ^ ^ ^-10.00001 if entity @e[distance=..10,tag=ExWeapons.Facing] run scoreboard players set @s ExWeapons.ZFacing -1
execute as @e[tag=ExWeapons.Facing,type=minecraft:armor_stand] at @p[tag=ExWeapons.Check] run tp ~ ~ ~
tag @e remove ExWeapons.Facing
tag @s remove ExWeapons.Check
#処理の最後で座標を代入
execute as @s store result score @s ExWeapons.PrevPosX run data get entity @s Pos[0] 1000
execute as @s store result score @s ExWeapons.PrevPosZ run data get entity @s Pos[2] 1000