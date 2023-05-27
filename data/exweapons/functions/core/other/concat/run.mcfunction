execute positioned ~ ~-1 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=exweapons.concat]
data modify block ~ ~1 ~ Command set string block ~ ~-1 ~ LastOutput 91 226
tellraw @p {"nbt":"Command","block":"~ ~1 ~"}
