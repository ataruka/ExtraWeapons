## アイテム代入
 data remove storage exweapons: mainhandItem
 execute if entity @s[type=player] run data modify storage exweapons: mainhandItem set from entity @s SelectedItem
 execute if entity @s[type=!player] run data modify storage exweapons: mainhandItem set from entity @s HandItems[0]
 execute unless data storage exweapons: mainhandItem{} run data modify storage exweapons: mainhandItem set value {Slot:0b,id:"minecraft:air",Count:1b}
 setblock 13201 -64 13201 air replace
 setblock 13201 -64 13201 shulker_box{Items:[{Slot:0b,id:"minecraft:stick",Count:1b}]}
 data modify storage exweapons: mainhandItem.Slot set value 0b
 data modify block 13201 -64 13201 Items[{Slot:0b}] set from storage exweapons: mainhandItem
 data remove storage exweapons: mainhandItem
 item replace entity @s weapon.mainhand from entity @s weapon.offhand
 item replace entity @s weapon.offhand from block 13201 -64 13201 container.0
 
## 処理
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d,weapon:{Mode:1,ModeAttack:5}}}}},tag=!tmp.check] unless score @s ExWeapons.katana.useReturn matches -2147483648..2147483647 run function exweapons:core/weapons/katana/use/mode1/0-6.run-sneak
 execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}},tag=!tmp.check] unless score @s ExWeapons.katana.useReturn matches -2147483648..2147483647 run function exweapons:core/weapons/katana/use/modechange/0.run

## Reset
 tag @s remove tmp.check