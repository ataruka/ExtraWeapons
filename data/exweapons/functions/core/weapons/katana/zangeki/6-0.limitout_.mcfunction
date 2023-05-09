# LimitOut処理
 particle minecraft:flash ~ ~ ~ 2 1 2 1 1 force
 particle minecraft:dust 1 1 0 2 ~ ~1 ~ 2 2 2 1 2 force
 function exweapons:core/abnormal/thunder/remove

 tag @s add tmp.owner

 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 0 anchored eyes run tag @e[distance=..6,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner,type=!player] add tmp.target
 execute if entity @e[tag=tmp.owner,type=player] if score $FriendlyFire ExWeapons.setting matches 1 anchored eyes run tag @e[distance=..6,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target
 execute if entity @e[tag=tmp.owner,type=!player] anchored eyes run tag @e[distance=..6,type=!#exweapons:non_living,type=!#exweapons:protect,tag=!tmp.owner] add tmp.target

 effect give @e[tag=tmp.target] slowness 3 4 true
 tag @e remove tmp.target
 tag @s remove tmp.owner