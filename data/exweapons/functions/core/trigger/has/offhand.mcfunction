# アイテムをオフハンドに持ったとき
## 除外
tag @a[tag=ExWeapons.Abnormal.ice.frozen] add Exweapons.triggerOff.has
## 全アイテム
execute as @a[tag=!Exweapons.triggerOff.has,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}]}] at @s run function exweapons:core/weapons/katana/use/4.offhand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_nugget",tag:{exweapons:{Metaid:001d}},Count:4b}]}] at @s run function exweapons:core/craft/item/brass
## リセット
tag @a[tag=Exweapons.triggerOff.has] remove Exweapons.triggerOff.has