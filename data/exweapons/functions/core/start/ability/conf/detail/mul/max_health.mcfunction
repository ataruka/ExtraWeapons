# 読み込み時の値適応-MaxHealth
## リセット
attribute @s generic.max_health modifier remove 6B-1-9CB1-0-1
## 結合-計算
tag @s add exweapon.abilityset
execute store result storage exweapons: command.rng float 0.1 run scoreboard players get @s ExWeapons.DetailAbility.HealthMul
tellraw @p {"nbt":"command.rng","storage":"exweapons:"}

data modify storage util: in set string storage exweapons: command.rng
function #util:split
tellraw @p {"nbt":"out","storage":"util:"}

data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}

data merge storage exweapons: {command:{ability:["attribute @e[tag=exweapon.abilityset,limit=1,sort=nearest] generic.max_health modifier add 6B-1-9CB1-0-1 Ability_HPMul ","0","0","0","0","0",".","0"," multiply"]}}
data modify storage exweapons: command.ability[-2] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-3] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-4] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-5] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-6] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-7] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
data modify storage exweapons: command.ability[-8] set from storage util: out[-1]
tellraw @p {"nbt":"command.ability","storage":"exweapons:"}
data remove storage util: out[-1]
tellraw @p {"nbt":"out","storage":"util:"}
execute positioned 13401 -64 13401 run function exweapons:core/other/concat/