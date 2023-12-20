 data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{Attack:0}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
 playsound block.smithing_table.use master @a ~ ~ ~ 1 1
 scoreboard players reset @s ExWeapons.katana.ZangekiReturn