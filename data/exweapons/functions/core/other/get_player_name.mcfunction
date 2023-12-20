# プレイヤー名を取得
summon minecraft:item_display ~ 500 ~ {Tags:[GetPlayerName],item:{id:"stone",Count:1b}}

execute positioned ~ 500 ~ run loot replace entity @e[type=item_display,distance=..0.01,tag=GetPlayerName,limit=1] container.0 loot exweapons:get_player_name
execute positioned ~ 500 ~ as @e[type=item_display,distance=..0.01,tag=GetPlayerName,limit=1] run data modify storage exweapons: command.ability[1] set from entity @s item.tag.SkullOwner.Name

execute positioned ~ 500 ~ as @e[type=item_display,distance=..0.01,tag=GetPlayerName,limit=1] run kill @s