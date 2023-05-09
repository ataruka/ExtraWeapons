#tp
 particle sonic_boom ^ ^0.2 ^ 0 0 0 1 1 force
 function better_collision:api/
 execute if score $Hit BCollision.core matches 1 run tag @s add exweapons.zangeki4tp
 execute unless entity @s[distance=..5] run tag @s add exweapons.zangeki4tp
 execute unless entity @s[tag=exweapons.zangeki4tp] positioned ^ ^ ^-0.2 run function exweapons:core/weapons/katana/zangeki/4.zangekitp
 execute if entity @s[tag=exweapons.zangeki4tp] run tp ~ ~ ~
 tag @s remove exweapons.zangeki4tp