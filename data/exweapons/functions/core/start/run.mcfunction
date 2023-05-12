# Tickでのスタート処理
## move_to_score用のアマスタ
 kill @e[tag=ExWeapons.forcheck,type=armor_stand]
 execute as @a[gamemode=!spectator] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["ExWeapons.forcheck"],Marker:1b}
 execute as @a[gamemode=!spectator] at @s run function exweapons:core/trigger/move_to_score
## スライムを消す
 execute as @e[type=magma_cube,tag=exweapons.slimemove] at @s run function exweapons:core/other/slime_kill
## テキスト表示エンティティを消す
 execute as @e[type=text_display,tag=exweapons.textentity] at @s run function exweapons:core/other/text_kill

 advancement grant @a only exweapons:start
 execute store result storage exweapons: text.katana.zangeki_damage float 0.1 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
 execute store result storage exweapons: text.katana.zangeki_distance float 1.5 run scoreboard players get $katana_ZangekiDistance ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.1 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
 execute store result storage exweapons: text.kuzyakusen.senpu_distance float 0.1 run scoreboard players get $kuzyakusen_SenpuDistance ExWeapons.setting
 execute as @e unless score @s ExWeapons.DetailAbility.ExAttackDamageMul matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul 100
 execute as @e unless score @s ExWeapons.AttributeAbility.FireDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.FireDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.FrostDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.FrostDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.GrassDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.GrassDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.MuDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.MuDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.ThunderDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.ThunderDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.VoidDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.VoidDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.WaterDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.WaterDamage 100
 execute as @e unless score @s ExWeapons.AttributeAbility.WindDamage matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.WindDamage 100
## ScoreToDamageモードでのみ稼働
 execute as @e unless score @s ExWeapons.DetailAbility.ExDamageProtectionMul matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.ExDamageProtectionMul 0
 execute as @e unless score @s ExWeapons.AttributeAbility.FireProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.FireProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.FrostProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.FrostProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.GrassProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.GrassProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.MuProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.MuProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.ThunderProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.ThunderProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.VoidProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.VoidProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.WaterProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.WaterProtection 0
 execute as @e unless score @s ExWeapons.AttributeAbility.WindProtection matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.AttributeAbility.WindProtection 0
 execute as @a store result score @s ExWeapons.PlayerUUID0 run data get entity @s UUID[0]
 execute as @a store result score @s ExWeapons.PlayerUUID1 run data get entity @s UUID[1]
 execute as @a store result score @s ExWeapons.PlayerUUID2 run data get entity @s UUID[2]
 execute as @a store result score @s ExWeapons.PlayerUUID3 run data get entity @s UUID[3]
 execute as @e at @s run function #oh_my_dat:please