#スラッシュ
## 処理
 scoreboard players set @s ExWeapons.katana.useChargeBreak1 30
 scoreboard players set @s ExWeapons.katana.useChargeBreak1.tick 630
 scoreboard players reset @s ExWeapons.katana.useComboReturn
 scoreboard players add @s ExWeapons.katana.useReturn 40
### 処理

 execute at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"ChargeBreak-必殺<雷者の一太刀>","color":"red","bold":true,"italic":false}'}
 execute at @s run function exweapons:core/weapons/katana/use/chargebreak/1-1.tp
### Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:0,Charged:0,ChargePoint:0}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s SelectedItem.tag.CustomModelData
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt.CustomModelData set from entity @s HandItems[0].tag.CustomModelData
 data merge storage exweapons: {item:{weapon:{nbt:{CustomModelData:100040}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_custom-model-data
 data remove storage exweapons: item.weapon.nbt

 execute unless entity @s[nbt={SelectedItem:{tag:{exweapons:{weapon:{Enchant:true}}}}}] run item modify entity @s weapon.mainhand exweapons:enchantments/kirakira_delete
 data merge storage exweapons: {item:{weapon:{nbt:{Enchant:false}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 音
 playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.2 0
 playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.2 0
 playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.2 0
 playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.2 0
 playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.2 0

 effect give @s night_vision 2 0 true
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check