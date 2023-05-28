# Tickでのスタート処理
## move_to_score用のアマスタ
 kill @e[tag=ExWeapons.forcheck,type=armor_stand]
 execute as @a[gamemode=!spectator] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["ExWeapons.forcheck"],Marker:1b,Silent:1b}
 execute as @a[gamemode=!spectator] at @s run function exweapons:core/trigger/move_to_score
 
## スライムを消す
 execute as @e[type=magma_cube,tag=exweapons.slimemove] at @s run function exweapons:core/other/slime_kill

## テキスト表示エンティティを消す
 execute as @e[type=text_display,tag=exweapons.textentity] at @s run function exweapons:core/other/text_kill

## 毎日のプレゼントボックス
# function #util:datetime
# execute store result score $System ExWeapons.day run data get storage util: out.day
# execute as @a[advancements={exweapons:start=false}] at @s run function exweapons:core/item/everyday_giftbox/0.give
# execute as @a at @s unless score @s ExWeapons.day = $System ExWeapons.day run function exweapons:core/item/everyday_giftbox/0.give


## なんか
 advancement grant @a only exweapons:start
 execute store result storage exweapons: text.katana.zangeki_damage float 0.1 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 execute store result storage exweapons: text.katana.zangeki_duration float 1 run scoreboard players get $katana_ZangekiDuration ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.1 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_duration float 1 run scoreboard players get $kuzyakusen_SenpuDuration ExWeapons.setting

## Ability
# execute as @e[type=!#exweapons:non_living] at @s run function exweapons:core/start/ability/reset
# execute as @e[type=!#exweapons:non_living] at @s run function exweapons:core/start/ability/add
# execute as @e[type=!#exweapons:non_living] at @s run function exweapons:core/start/ability/conf

 execute as @a at @e[type=!#exweapons:non_living,distance=..50] at @s unless score @s OhMyDatID matches -2147483648..2147483647 run function #oh_my_dat:please