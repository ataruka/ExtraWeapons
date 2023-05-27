 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.Damage set from entity @s SelectedItem.tag.Damage
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.Damage set from entity @s HandItems[0].tag.Damage
 execute unless data storage exweapons: item.weapon.nbt.Damage run data merge storage exweapons: {item:{weapon:{nbt:{Damage:0}}}}
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.Damage
 scoreboard players add $Tmp ExWeapons.rng 9
 execute if score $Tmp ExWeapons.rng matches 25.. run function exweapons:core/other/break/1.break
 # execute if score $Tmp ExWeapons.rng matches ..25 run playsound ui.button.click master @a ~ ~ ~ 1 1
 execute store result storage exweapons: item.weapon.nbt.Damage int 1 run scoreboard players get $Tmp ExWeapons.rng
 item modify entity @s weapon.mainhand exweapons:nbtcopy_damage
 data remove storage exweapons: item.weapon.nbt
 scoreboard players remove $Tmp ExWeapons.rng 25
 scoreboard players operation $Tmp ExWeapons.rng *= #-1 ExWeapons.rng
 # title @s actionbar [{"text": "残り耐久値 |"},{"score":{"name":"$Tmp","objective":"ExWeapons.rng"}},{"text":"|25|"}]