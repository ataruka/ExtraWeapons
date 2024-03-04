# 左クリック時の処理(mobを殴った時)
# 事前リセット
scoreboard players reset @a[tag=ExWeapons.Abnormal.ice.frozen,scores={ExWeapons.attack=-2147483648..2147483647}] ExWeapons.attack
scoreboard players reset @a[tag=exweapons.katana.zangeki5,scores={ExWeapons.attack=-2147483648..2147483647}] ExWeapons.attack
## 刀-Katana
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run function exweapons:core/weapons/katana/zangeki/10.run
## 孔雀扇-Kuzyakusen
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/attack/1.attack
## 草付与の剣-GrassAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003d}}}}] at @s run function exweapons:core/weapons/aspectsword/grass/attack/1.attack
## 火付与の剣-FireAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.1d}}}}] at @s run function exweapons:core/weapons/aspectsword/fire/attack/1.attack
## 水付与の剣-WaterAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.2d}}}}] at @s run function exweapons:core/weapons/aspectsword/water/attack/1.attack
## 氷付与の剣-IceAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.3d}}}}] at @s run function exweapons:core/weapons/aspectsword/ice/attack/1.attack
## 雷付与の剣-ThunderAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.4d}}}}] at @s run function exweapons:core/weapons/aspectsword/thunder/attack/1.attack
## 風付与の剣-WindAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.5d}}}}] at @s run function exweapons:core/weapons/aspectsword/wind/attack/1.attack
## 虚付与の剣-VoidAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.6d}}}}] at @s run function exweapons:core/weapons/aspectsword/void/attack/1.attack
## 裂付与の剣-SplitAspect-Sword
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{exweapons:{id:003.7}}}}] at @s run function exweapons:core/weapons/aspectsword/mu/attack/1.attack

## 関係なしに発動
execute as @a[scores={ExWeapons.attack=1..,ExWeapons.katana.useChargeBreak1.tick=0..}] at @s unless score @s ExWeapons.katana.useChargeBreak1 matches 0.. run function exweapons:core/weapons/katana/use/chargebreak/2-2.damage

# リセット
scoreboard players reset @a[scores={ExWeapons.attack=-2147483648..2147483647}] ExWeapons.attack