# Modechange
## 初期リセット
 setblock 13201 -64 13201 air replace
 setblock 13201 -64 13201 shulker_box{Items:[{Slot:0b,id:"minecraft:stick",Count:1b}]}

## 音
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0
 playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 2 2 0

## モードチェンジ
 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 execute store result score $Tmp ExWeapons.rng run data get storage exweapons: item.weapon.nbt.Mode
 execute if score $Tmp ExWeapons.rng matches 1 run scoreboard players set $Tmp ExWeapons.rng -1
 execute if score $Tmp ExWeapons.rng matches 0 run scoreboard players set $Tmp ExWeapons.rng 0

### テキスト表示
 execute if score $Tmp ExWeapons.rng matches -1 run scoreboard players reset @s[type=player] ExWeapons.katana.ModeChange1
 execute if score $Tmp ExWeapons.rng matches -1 run scoreboard players set @s[type=player] ExWeapons.katana.ModeChange0 50
 execute if score $Tmp ExWeapons.rng matches 0 run scoreboard players reset @s[type=player] ExWeapons.katana.ModeChange0
 execute if score $Tmp ExWeapons.rng matches 0 run scoreboard players set @s[type=player] ExWeapons.katana.ModeChange1 50
 scoreboard players add $Tmp ExWeapons.rng 1
 execute store result storage exweapons: item.weapon.nbt.Mode int 1 run scoreboard players get $Tmp ExWeapons.rng
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check