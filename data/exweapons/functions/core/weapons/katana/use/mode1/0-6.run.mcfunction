#スラッシュ
## 攻撃
 #execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/1-6.tp
 #execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/2-6.damage
## 処理
 scoreboard players set @s ExWeapons.katana.useReturn 30
 scoreboard players set @s ExWeapons.katana.useCombo6 18
 scoreboard players reset @s ExWeapons.katana.useComboReturn
### Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:0,Mode1:{Combo6:0}}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 音
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.5 0
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check