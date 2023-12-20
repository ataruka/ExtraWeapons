#スラッシュ
## 処理
 scoreboard players set @s ExWeapons.katana.useChargeBreak1 38
 scoreboard players set @s ExWeapons.katana.useChargeBreak1.tick 638
 scoreboard players reset @s ExWeapons.katana.useComboReturn
### 処理
 execute as @s at @s run function exweapons:core/weapons/katana/use/chargebreak/1-1.tp
### Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:0,Charged:0,ChargePoint:0}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 音
 
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check