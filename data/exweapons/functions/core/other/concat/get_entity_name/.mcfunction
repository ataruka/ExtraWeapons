data modify storage util: in set value '{"selector":"@s"}'
function #util:resolve

data modify storage util: out set string storage util: out 14 60
data modify storage util: in set from storage util: out
function #util:split

function exweapons:core/other/concat/get_entity_name/sort

data modify storage exweapons: command.delection set from storage util: out[-1]
execute if data storage exweapons: {command:{delection:'"'}} run data remove storage util: out[-1]

data remove storage exweapons: command.ability[1]
data modify storage exweapons: command.ability insert 1 from storage util: out[]
