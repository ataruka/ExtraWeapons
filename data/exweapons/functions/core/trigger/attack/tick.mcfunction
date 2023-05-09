# 左クリック時の処理(mobを殴った時)
# 事前リセット
scoreboard players reset @e[tag=ExWeapons.Abnormal.ice.frozen] ExWeapons.attack
## 刀-Katana
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run function exweapons:core/weapons/katana/zangeki/10.run
## 孔雀扇-Kuzyakusen
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/attack/1.attack
## 草付与の剣-GrassAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:003d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/attack/1.attack

# リセット
scoreboard players reset * ExWeapons.attack