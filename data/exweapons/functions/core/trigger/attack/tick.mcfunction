# 左クリック時の処理(mobを殴った時)
## katana
execute as @a[scores={ExWeapons.attack=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:001d}}}] at @s run function exweapons:core/weapons/katana/zangeki/1.zangeki

# リセット
scoreboard players reset * ExWeapons.attack