# 右クリック時の処理(Carrot_on_a_Stick)
# 事前リセット
scoreboard players reset @e[tag=ExWeapons.Abnormal.ice.frozen] ExWeapons.use.carrot_on_a_stick
## 刀-katana(モードチェンジ)

## 孔雀扇-kuzyakusen
execute as @a[scores={ExWeapons.use.carrot_on_a_stick=1..},tag=!exweapons.kuzyakusen.senpuCT,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run function exweapons:core/weapons/kuzyakusen/senpu/1.senpu
# リセット
scoreboard players reset * ExWeapons.use.carrot_on_a_stick