# メインハンド開封！
## katana-八〇式刀剣(id:001)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:001d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/001
## kuzyakusen-孔雀扇(id:002)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:002d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/002
## aspectsword-付与の剣(id:003~id:009)
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:003d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/003
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:004d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/004
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:005d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/005
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:006d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/006
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:007d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/007
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:008d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/008
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{id:009d}}}}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/009
## それ以外
execute unless data entity @s SelectedItem.tag.exweapons.ability[{Slot:0}] run function exweapons:core/other/item_open/mainhand/slot0/weapons/other