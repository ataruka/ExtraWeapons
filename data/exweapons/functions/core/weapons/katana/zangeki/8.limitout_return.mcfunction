# return
summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11,Amplifier:5b,Duration:20,ShowParticles:1b}]}

particle minecraft:dust 1 1 0 2 ~ ~1 ~ 2 1 2 1 500 force
execute rotated ~45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-45 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute rotated ~-135 0 positioned ^ ^ ^6 summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute summon minecraft:lightning_bolt run tp @s ~ ~-100 ~
execute summon minecraft:lightning_bolt run tp @s ~ ~-100 ~

scoreboard players reset @s ExWeapons.katana.ZangekiLimitOut
scoreboard players reset @s ExWeapons.katana.ZangekiTick
tag @s remove exweapons.katana.zangeki5