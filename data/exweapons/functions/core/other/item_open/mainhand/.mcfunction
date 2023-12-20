# メインハンド開封！
## lore設定
### katana-八〇式刀剣(id:001)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:001d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/001
### kuzyakusen-孔雀扇(id:002)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:002d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/002
### aspectsword-付与の剣(id:003~id:009)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:003d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/003
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:004d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/004
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:005d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/005
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:006d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/006
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:007d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/007
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:008d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/008
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:009d}}}}] run item modify entity @s weapon.mainhand exweapons:lore_nbt/weapons/009
##　次のlore設定
item modify entity @s weapon.mainhand exweapons:lore_nbt/opened
item modify entity @s weapon.mainhand exweapons:lore_nbt/_
## Slot数0
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:0}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:1}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:2}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:3}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:4}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/
## Slot数1
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:1}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:2}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:3}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:4}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:1}] run function exweapons:core/other/item_open/mainhand/slot1/
## Slot数2
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:2}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:3}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:4}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:2}] run function exweapons:core/other/item_open/mainhand/slot2/
## Slot数3
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:3}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/mainhand/slot3/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:4}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/mainhand/slot3/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/mainhand/slot3/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/mainhand/slot3/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:3}] run function exweapons:core/other/item_open/mainhand/slot3/
## Slot数4
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:4}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:4}] run function exweapons:core/other/item_open/mainhand/slot4/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:4}] run function exweapons:core/other/item_open/mainhand/slot4/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:4}] run function exweapons:core/other/item_open/mainhand/slot4/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:4}] run function exweapons:core/other/item_open/mainhand/slot4/
## Slot数5
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:5}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:5}] run function exweapons:core/other/item_open/mainhand/slot5/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:5}] run function exweapons:core/other/item_open/mainhand/slot5/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:5}] run function exweapons:core/other/item_open/mainhand/slot5/
## Slot数6
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:6}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:6}] run function exweapons:core/other/item_open/mainhand/slot6/
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:6}] run function exweapons:core/other/item_open/mainhand/slot6/
## Slot数7
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b,Slot:7}}}}}] unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:7}] run function exweapons:core/other/item_open/mainhand/slot7/
## Lore設定
function exweapons:core/other/item_open/set_lore/status/
## Openedにしておく
item modify entity @s weapon.mainhand exweapons:lore_nbt/opened_nbt