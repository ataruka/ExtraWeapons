#旋風のダメージ処理
 scoreboard players add @s ExWeapons.kuzyakusen.SenpuDamageTick 1
 tag @s add tmp.damage
 execute as @e[type=!#exweapons:non_living] if score @s OhMyDatID = @e[tag=tmp.damage,limit=1,type=armor_stand] ExWeapons.Attacker run tag @s add tmp.owner
 tag @e remove tmp.damage

 execute store result score $Tmp ExWeapons.rng run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
 scoreboard players operation $Tmp ExWeapons.rng *= #10 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng += @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamage

 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.DetailAbility.ExAttackDamageMul
 scoreboard players operation $Tmp ExWeapons.rng *= @e[tag=tmp.owner,limit=1] ExWeapons.AttributeAbility.WindDamage
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
 scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
 scoreboard players operation $Damage ExWeapons.rng = $Tmp ExWeapons.rng

 scoreboard players set $DamageType ExWeapons.rng 6

 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..5,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target

 execute as @e[distance=..4,type=#arrows] run data merge entity @s {Motion:[0.0,0.0,0.0]}
 execute as @s at @s run tp @e[type=item,distance=..4] ~ ~ ~
 execute as @s at @s run tp @e[type=!#exweapons:non_living,tag=!exweapons.protect,type=!player,tag=!tmp.owner,distance=..4] ~ ~ ~
 execute as @s at @s run tp @a[gamemode=!creative,gamemode=!spectator,tag=!tmp.owner,distance=..0.5] ~ ~ ~

 execute as @e[tag=tmp.target] at @s run function exweapons:core/damage/

 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] run tag @e[distance=..5,type=!#exweapons:non_living,tag=!exweapons.protect,tag=!tmp.owner] add tmp.target
 
 execute if entity @s[scores={ExWeapons.kuzyakusen.SenpuDamageTick=5..}] as @e[tag=tmp.target,sort=nearest,limit=3] at @s run function exweapons:core/abnormal/wind/damage_lv2
 execute if entity @s[scores={ExWeapons.kuzyakusen.SenpuDamageTick=5..}] as @e[tag=tmp.target,sort=nearest,limit=3] at @s run function exweapons:core/abnormal/wind/spread_lv2
 execute if entity @s[scores={ExWeapons.kuzyakusen.SenpuDamageTick=5..}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 2
 scoreboard players reset @s[scores={ExWeapons.kuzyakusen.SenpuDamageTick=5..}] ExWeapons.kuzyakusen.SenpuDamageTick
 tag @e remove tmp.target
 tag @e remove tmp.owner