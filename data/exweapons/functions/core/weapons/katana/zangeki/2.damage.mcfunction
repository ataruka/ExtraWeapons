#斬撃のダメージ処理
 tag @s add tmp.damage
 execute as @a if score @s ExWeapons.PlayerUUID0 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID0 if score @s ExWeapons.PlayerUUID1 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID1 if score @s ExWeapons.PlayerUUID2 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID2 if score @s ExWeapons.PlayerUUID3 = @e[tag=tmp.damage,limit=1] ExWeapons.OwnerUUID3 run tag @s add tmp.owner
 tag @e remove tmp.damage

 execute if score $FriendlyFire ExWeapons.setting matches 0 as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 execute if score $FriendlyFire ExWeapons.setting matches 1 as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 execute if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~1 ~ as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 execute if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~1 ~ as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 execute if score $FriendlyFire ExWeapons.setting matches 0 positioned ~ ~-1 ~ as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner,type=!player] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 execute if score $FriendlyFire ExWeapons.setting matches 1 positioned ~ ~-1 ~ as @e[distance=..1.5,type=!#exweapons:non_living,tag=!tmp.owner] run damage @s 12 mob_attack by @p[tag=tmp.owner]
 tag @e remove tmp.owner