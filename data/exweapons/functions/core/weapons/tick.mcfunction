# katana
## zangeki
scoreboard players remove @e[tag=exweapons.katana.zangeki] ExWeapons.katana.zangekitick 1

execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/2.damage
execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/3.tp

execute as @e[scores={ExWeapons.katana.zangekitick=..0}] at @s run kill @s