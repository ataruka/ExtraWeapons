# アイテムを利き手に持ったとき
## 全アイテム
execute as @a[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b}}}}}] at @s run function exweapons:core/other/item_open/mainhand/particle
execute as @a[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{opened:0b}}}}}] at @s run function exweapons:core/other/item_open/mainhand/
