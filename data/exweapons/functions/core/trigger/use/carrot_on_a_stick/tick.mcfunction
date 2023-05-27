# 右クリック時の処理(Carrot_on_a_Stick)
# 事前リセット
scoreboard players reset @e[tag=ExWeapons.Abnormal.ice.frozen,scores={ExWeapons.use.carrot_on_a_stick=-2147483648..2147483647}] ExWeapons.use.carrot_on_a_stick
## 刀-katana(モードチェンジ)

## 孔雀扇-kuzyakusen
execute as @a[scores={ExWeapons.use.carrot_on_a_stick=1..},tag=!exweapons.kuzyakusen.senpuCT,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/senpu/1.senpu
## 毎日のプレゼントボックス-everyday_giftbox
execute as @a[scores={ExWeapons.use.carrot_on_a_stick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:013d}}}}] at @s run function exweapons:core/item/everyday_giftbox/1.use
## インスタントリスポーンアンカー-instant_respawn_anchor
execute as @a[scores={ExWeapons.use.carrot_on_a_stick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:014d}}}}] at @s run function exweapons:core/item/instant_respawn_anchor/1.use
# リセット
scoreboard players reset @e[scores={ExWeapons.use.carrot_on_a_stick=-2147483648..2147483647}] ExWeapons.use.carrot_on_a_stick