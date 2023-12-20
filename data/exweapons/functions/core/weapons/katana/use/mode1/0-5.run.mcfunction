#スラッシュ
## 攻撃
 execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/1-5.tp
 execute as @s at @s run function exweapons:core/weapons/katana/use/mode1/2-5.damage
## 処理
 scoreboard players add @s ExWeapons.katana.useReturn 10
 scoreboard players operation @s ExWeapons.katana.useComboReturn = $katana_useComboReturn ExWeapons.setting
### Compound-Nbt
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.ChargePoint
 scoreboard players add $Tmp ExWeapons.rng 1
 execute if score $Tmp ExWeapons.rng matches 200.. run scoreboard players set $Tmp ExWeapons.rng 200
 execute store result storage exweapons: item.weapon.nbt.ChargePoint int 1 run scoreboard players get $Tmp ExWeapons.rng
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:5}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 音
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.5 0
 playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 1 0
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check