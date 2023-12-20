 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s SelectedItem.tag.CustomModelData
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s HandItems[0].tag.CustomModelData
 data merge storage exweapons: {item:{weapon:{nbt:{CustomModelData:100041}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_custom-model-data
 data remove storage exweapons: item.weapon.nbt

item modify entity @s weapon.mainhand exweapons:enchantments/kirakira