# loreの設定
item modify entity @s weapon.mainhand exweapons:lore_nbt/status/_basic
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/set_lore/status/slot0/
item modify entity @s weapon.mainhand exweapons:lore_nbt/status/_additional
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/set_lore/status/slot1/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/set_lore/status/slot2/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/set_lore/status/slot3/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:4}] run function exweapons:core/other/item_open/set_lore/status/slot4/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:5}] run function exweapons:core/other/item_open/set_lore/status/slot5/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:6}] run function exweapons:core/other/item_open/set_lore/status/slot6/
execute if data entity @s SelectedItem.tag.exweapons.ability[{Slot:7}] run function exweapons:core/other/item_open/set_lore/status/slot7/