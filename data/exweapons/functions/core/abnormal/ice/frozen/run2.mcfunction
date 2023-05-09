summon block_display ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["exweapons.abnormal.frozen"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:ice"}}
ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=exweapons.abnormal.frozen]
scoreboard players reset @s ExWeapons.Abnormal.iceTick
tag @s remove ExWeapons.Abnormal.iceLv1
tag @s remove ExWeapons.Abnormal.iceLv2
tag @s remove ExWeapons.Abnormal.iceLv3
playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
scoreboard players set @s ExWeapons.Abnormal.ice.frozenTick 200
tag @s add ExWeapons.Abnormal.ice.frozen
scoreboard players reset @s ExWeapons.Abnormal.waterTick
tag @s remove ExWeapons.Abnormal.waterLv1
tag @s remove ExWeapons.Abnormal.waterLv2
tag @s remove ExWeapons.Abnormal.waterLv3