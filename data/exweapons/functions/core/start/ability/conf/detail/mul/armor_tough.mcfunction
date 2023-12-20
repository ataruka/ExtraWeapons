# 読み込み時の値適応-MaxHealth
## 記録
scoreboard players add $CommandPositionSet_ArmorToughness ExWeapons.rng 1
## リセット
attribute @s generic.armor_toughness modifier remove 6E-1-9CB1-0-1
## 結合-計算
execute store result storage exweapons: command.rng float 0.001 run scoreboard players get @s ExWeapons.DetailAbility.ArmorToughnessMul

data modify storage util: in set string storage exweapons: command.rng
function #util:split
data remove storage util: out[-1]
function exweapons:core/other/concat/sort

data merge storage exweapons: {command:{ability:["attribute ","player_name"," generic.armor_toughness modifier add 6E-1-9CB1-0-1 Ability_ArmorToughMul ","0","0","0",".","0","0","0"," multiply"]}}
### プレイヤー名を取得 エンティティは↓[https://github.com/ataruka/ExtraWeapons/blob/cc07a6dec20a8a3381eb49370250622b8e81e850/data/exweapons/functions/core/start/ability/conf/detail/mul/max_health.mcfunction#L35C15]
execute if entity @s[type=player] run function exweapons:core/other/get_player_name

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
scoreboard players operation $CommandPosition ExWeapons.rng = $CommandPositionSet_ArmorToughness ExWeapons.rng
execute positioned 13404 -64 13401 run function exweapons:core/other/concat/position_set