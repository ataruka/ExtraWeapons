# 読み込み時の値適応-MaxHealth
## 記録
execute store result score $Health ExWeapons.rng run data get entity @s Health 1000
## リセット
attribute @s generic.max_health modifier remove 6B-1-9CB1-0-1
## 結合-計算
execute store result storage exweapons: command.rng float 0.001 run scoreboard players get @s ExWeapons.DetailAbility.HealthMul

data modify storage util: in set string storage exweapons: command.rng
function #util:split
data remove storage util: out[-1]
function exweapons:core/other/concat/sort

data merge storage exweapons: {command:{ability:["attribute ","player_name"," generic.max_health modifier add 6B-1-9CB1-0-1 Ability_HPMul ","0","0","0",".","0","0","0"," multiply"]}}
### プレイヤー名を取得 エンティティは↓[https://github.com/ataruka/ExtraWeapons/blob/ac783c41b60de7ad3fbb4eb0337bfdafb95be305/data/exweapons/functions/core/start/ability/conf/detail/mul/max_health.mcfunction#L35C15#L35C17]
execute if entity @s[type=player] run loot spawn ~ ~ ~ loot exweapons:get_player_name
execute if entity @s[type=player] if entity @e[type=item,nbt={Item:{"id":"minecraft:player_head"}},limit=1,sort=nearest,distance=..0.1] run data modify storage exweapons: command.ability[1] set from entity @e[type=item,nbt={Item:{"id":"minecraft:player_head"}},limit=1,sort=nearest] Item.tag.SkullOwner.Name
execute if entity @s[type=player] if entity @e[type=item,nbt={Item:{"id":"minecraft:player_head"}},limit=1,sort=nearest,distance=..0.1] run kill @e[type=item,nbt={Item:{"id":"minecraft:player_head"}},limit=1,sort=nearest]

data modify storage exweapons: command.ability[-2] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-3] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-4] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-5] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-6] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-7] set from storage util: out[-1]
data remove storage util: out[-1]
data modify storage exweapons: command.ability[-8] set from storage util: out[-1]
data remove storage util: out[-1]

### エンティティの場合ここ
execute if entity @s[type=!player] run function exweapons:core/other/concat/get_entity_name/

data modify storage exweapons: command.run set from storage exweapons: command.ability
execute positioned 13401 -64 13401 run function exweapons:core/other/concat/