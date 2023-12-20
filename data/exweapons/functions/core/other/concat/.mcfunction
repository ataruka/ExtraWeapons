execute unless loaded ~ ~ ~ run forceload add ~ ~

fill ~ ~ ~ ~ ~3 ~ air
setblock ~ ~4 ~ bedrock
fill ~1 ~ ~ ~1 ~3 ~ bedrock
fill ~-1 ~ ~ ~-1 ~3 ~ bedrock

summon armor_stand ~ ~ ~ {Marker:1b,Tags:["exweapons.concat"],CustomNameVisible:true}
data modify storage util: in set value '{"nbt":"command.run[]","storage":"exweapons:","separator":""}'
function #util:resolve
data modify entity @e[tag=exweapons.concat,limit=1,sort=nearest] CustomName set from storage util: out

setblock ~ ~ ~ command_block[facing=up]{Command:"enchant @e[tag=exweapons.concat,limit=1,sort=nearest,type=armor_stand] smite",auto:1b}
setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"function exweapons:core/other/concat/run",auto:1b}
setblock ~ ~2 ~ chain_command_block[facing=up]{auto:1b}
setblock ~ ~3 ~ chain_command_block[facing=up]{Command:"execute positioned ~ ~-3 ~ run kill @e[type=armor_stand,distance=..1.0,tag=exweapons.concat,sort=nearest,limit=1]",auto:1b}
