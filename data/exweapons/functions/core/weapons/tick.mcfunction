# katana
## zangeki
scoreboard players remove @e[tag=exweapons.katana.zangeki] ExWeapons.katana.ZangekiTick 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run effect give @s haste 1 4 true

execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/2.damage
execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/3.tp

execute as @e[scores={ExWeapons.katana.ZangekiTick=..0}] at @s run kill @s