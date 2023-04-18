scoreboard players set $MT-Seed MT-Index 0
summon minecraft:area_effect_cloud 0 0 0 {Tags:[MT-SeedGenerator]}
execute store result score $MT-Seed MT-Calc run data get entity @e[tag=MT-SeedGenerator,limit=1] UUID[0]
#scoreboard players set $MT-Seed MT-Calc 20150919

function mt:seed/generate/loop

scoreboard players set $MT-Seed MT-Index 0