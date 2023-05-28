data modify storage exweapons: command.delection set from storage util: out[-1]
execute unless data storage exweapons: {command:{delection:'"'}} run data remove storage util: out[-1]
execute unless data storage exweapons: {command:{delection:'"'}} run function exweapons:core/other/concat/get_entity_name/sort