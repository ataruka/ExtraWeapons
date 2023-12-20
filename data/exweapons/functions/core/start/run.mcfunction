# Tickでのスタート処理
## 死んでいたらリセット
 execute as @a[scores={ExWeapons.death=1..}] at @s run function exweapons:core/other/death/reset

## move_to_score用のアマスタ
 kill @e[tag=ExWeapons.forcheck,type=armor_stand]
 execute as @a[gamemode=!spectator] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["ExWeapons.forcheck"],Marker:1b,Silent:1b}
 execute as @a[gamemode=!spectator] at @s run function exweapons:core/trigger/move_to_score
 
## スライムを消す
 execute as @e[type=magma_cube,tag=ExWeapons.SlimeMove] at @s run function exweapons:core/other/slime_kill

## テキスト表示エンティティを消す
 execute as @e[type=text_display,tag=ExWeapons.TextEntity] at @s run function exweapons:core/other/text_kill

## concat?を消す
 execute as @e[type=armor_stand,tag=exweapons.concat] at @s run function exweapons:core/other/concat_kill

## セレクター設定
 tag @e[tag=ExWeapons.AllSelector,distance=200..] remove ExWeapons.AllSelector
 execute as @e[type=!#exweapons:non_living,scores={OhMyDatID=-2147483648..2147483647}] at @s run tag @s add ExWeapons.AllSelector

## エフェクトこれでちゃんとかかるかなー？
 execute as @e[type=area_effect_cloud,tag=ExWeapons.AEC] at @s run tp @e[sort=nearest,limit=1,type=!#exweapons:non_living,tag=ExWeapons.AllSelector]

## 毎日のプレゼントボックス
 function #util:datetime
 execute store result score $System ExWeapons.day run data get storage util: out.day
 execute as @a[advancements={exweapons:start=false}] at @s run function exweapons:core/item/everyday_giftbox/0.give
 execute as @a at @s unless score @s ExWeapons.day = $System ExWeapons.day run function exweapons:core/item/everyday_giftbox/0.give

## ログイン処理
 execute as @a[scores={ExWeapons.login=1..}] unless score @s ExWeapons.playerSetting_enable-animation matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.playerSetting_enable-animation 1
 execute as @a[scores={ExWeapons.login=1..}] unless score @s ExWeapons.playerSetting_animation-alpha matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.playerSetting_animation-alpha 1
 tellraw @a[scores={ExWeapons.login=1..}] {"translate":"chatlog.exweapons.login"}
 tellraw @a[scores={ExWeapons.login=1..}] [{"translate":"chatlog.exweapons.login2","underlined":false},{"translate":"chatlog.exweapons.login3","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ExWeapons.textTrigger set 0"}},{"translate":"chatlog.exweapons.login4","underlined":false}]
 scoreboard players reset @a[scores={ExWeapons.login=1..}] ExWeapons.login

 scoreboard players enable @a ExWeapons.textTrigger
 execute as @a[scores={ExWeapons.textTrigger=-2147483648..2147483647}] at @s run function exweapons:setting/text/

## なんか
 advancement grant @a only exweapons:start
 execute store result storage exweapons: text.katana.zangeki_damage float 0.01 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 execute store result storage exweapons: text.katana.zangeki_duration float 1 run scoreboard players get $katana_ZangekiDuration ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.01 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_duration float 1 run scoreboard players get $kuzyakusen_SenpuDuration ExWeapons.setting

 execute as @e[scores={ExWeapons.InvulnerabilityTime=1..},tag=ExWeapons.AllSelector] at @s run scoreboard players remove @s ExWeapons.InvulnerabilityTime 1
 execute as @e[tag=ExWeapons.AllSelector,scores={OhMyDatID=-2147483648..2147483647}] at @s unless score @s ExWeapons.InvulnerabilityTime matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.InvulnerabilityTime 0

 scoreboard players set @e[scores={ExWeapons.jump=1..},tag=ExWeapons.AllSelector,type=!#exweapons:non_living] ExWeapons.jumpTick 200
 scoreboard players reset @e[scores={ExWeapons.jump=1..},tag=ExWeapons.AllSelector,type=!#exweapons:non_living] ExWeapons.jump
 scoreboard players remove @e[scores={ExWeapons.jumpTick=1..},tag=ExWeapons.AllSelector,type=!#exweapons:non_living] ExWeapons.jumpTick 1
 scoreboard players set @e[scores={ExWeapons.jumpTick=1..},nbt={OnGround:1b},tag=ExWeapons.AllSelector,type=!#exweapons:non_living] ExWeapons.jumpTick 0

## Ability
 scoreboard players reset $CommandPositionSet_Health ExWeapons.rng
 scoreboard players reset $CommandPositionSet_AttackDamage ExWeapons.rng
 scoreboard players reset $CommandPositionSet_Armor ExWeapons.rng
 scoreboard players reset $CommandPositionSet_ArmorToughness ExWeapons.rng
 scoreboard players reset $CommandPositionSet_KnockbackResistance ExWeapons.rng
 scoreboard players reset $CommandPositionSet_MovementSpeed ExWeapons.rng
 scoreboard players reset $CommandPositionSet_AttackSpeed ExWeapons.rng
 scoreboard players reset $CommandPosition ExWeapons.rng
 execute as @e[scores={OhMyDatID=-2147483648..2147483647},tag=ExWeapons.AllSelector,type=!#exweapons:non_living,tag=status.update] at @s if entity @a[distance=..50] run function exweapons:core/start/ability/reset
 execute as @e[scores={OhMyDatID=-2147483648..2147483647},tag=ExWeapons.AllSelector,type=!#exweapons:non_living] at @s if entity @a[distance=..50] run function exweapons:core/start/ability/add
 execute as @e[scores={OhMyDatID=-2147483648..2147483647},tag=ExWeapons.AllSelector,type=!#exweapons:non_living,tag=status.update] at @s if entity @a[distance=..50] run function exweapons:core/start/ability/conf
 execute as @a store result score @s ExWeapons.health_ run data get entity @s Health 1000
 execute as @a store result score @s ExWeapons.health_max run attribute @s generic.max_health get 1000
 execute as @a if score @s ExWeapons.health_ > @s ExWeapons.health_max run effect give @s instant_health 1 0 true

 execute as @a at @s as @e[type=!#exweapons:non_living,distance=..100] at @s unless score @s OhMyDatID matches -2147483648..2147483647 run tag @s add status.update
 execute as @a at @s as @e[type=!#exweapons:non_living,distance=..100] at @s unless score @s OhMyDatID matches -2147483648..2147483647 run function #oh_my_dat:please