# リセット
## 処理
 scoreboard players reset @s ExWeapons.katana.useComboReturn

 execute if entity @s[type=player] run data modify storage exweapons: item.weapon.nbt set from entity @s SelectedItem.tag.exweapons.weapon
 execute if entity @s[type=!player] run data modify storage exweapons: item.weapon.nbt set from entity @s HandItems[0].tag.exweapons.weapon
 data merge storage exweapons: {item:{weapon:{nbt:{ModeAttack:0}}}}
 item modify entity @s weapon.mainhand exweapons:nbtcopy_weapon
 data remove storage exweapons: item.weapon.nbt
## 音
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1
 playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 2 1