# 左クリック時の処理(mobを殴った時)
# 事前リセット
scoreboard players reset @e[tag=ExWeapons.Abnormal.ice.frozen] ExWeapons.attack
## 刀-Katana
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run function exweapons:core/weapons/katana/zangeki/10.run
## 孔雀扇-Kuzyakusen
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/attack/1.attack
## 草付与の剣-GrassAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003d}}}}] at @s run function exweapons:core/weapons/aspectsword/grass/attack/1.attack
## 火付与の剣-FireAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:004d}}}}] at @s run function exweapons:core/weapons/aspectsword/fire/attack/1.attack
## 水付与の剣-WaterAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:005d}}}}] at @s run function exweapons:core/weapons/aspectsword/water/attack/1.attack
## 氷付与の剣-IceAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:006d}}}}] at @s run function exweapons:core/weapons/aspectsword/ice/attack/1.attack
## 雷付与の剣-ThunderAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:007d}}}}] at @s run function exweapons:core/weapons/aspectsword/thunder/attack/1.attack
## 風付与の剣-WindAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:008d}}}}] at @s run function exweapons:core/weapons/aspectsword/wind/attack/1.attack
## 虚付与の剣-VoidAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:009d}}}}] at @s run function exweapons:core/weapons/aspectsword/void/attack/1.attack

# リセット
scoreboard players reset @e[scores={ExWeapons.attack=-2147483648..2147483647}] ExWeapons.attack