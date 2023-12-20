#スラッシュ
## 攻撃
 scoreboard players reset $Tmp_AdDamage ExWeapons.rng
 execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/1-7.tp
 execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/2-7.damage
## 処理
 scoreboard players add @s ExWeapons.katana.useReturn 5
 scoreboard players operation @s ExWeapons.katana.useComboReturn = $katana_useComboReturn ExWeapons.setting
### Compound-Nbt
### Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 scoreboard players add $Tmp ExWeapons.rng 10
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200
 execute store result storage exweapons: item.weapon.nbt.ChargePoint int 1 run scoreboard players get $Tmp ExWeapons.rng
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:0,Charged:1}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt

## 音
 execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/5-7.sound
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check