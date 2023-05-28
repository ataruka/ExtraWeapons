execute positioned ~ ~-1 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=exweapons.concat]
execute store result score $CommandRng ExWeapons.rng run data get block ~ ~-1 ~ LastOutput
function exweapons:core/other/concat/takeout
