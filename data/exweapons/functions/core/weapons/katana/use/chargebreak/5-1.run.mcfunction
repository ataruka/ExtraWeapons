#スラッシュ
## 処理
 scoreboard players set @s ExWeapons.katana.useChargeBreak2 30
 scoreboard players set @s ExWeapons.katana.useChargeBreak2.tick 630
 scoreboard players reset @s ExWeapons.katana.useComboReturn
 scoreboard players add @s ExWeapons.katana.useReturn 40
### 処理
 function exweapons:core/particle/katana/chargebreak/1-guiderail

 execute at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["ExWeapons.TextEntity"],text:'{"text":"ChargeBreak-必殺<乱舞乃蝶>","color":"red","bold":true,"italic":false}'}
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
 playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 2
 playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 2
 playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 2
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1
 playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1

 effect give @s darkness 2 127 true
 effect give @s slowness 2 5 true
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check