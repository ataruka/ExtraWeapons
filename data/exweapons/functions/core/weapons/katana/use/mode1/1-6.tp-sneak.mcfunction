# tp
## 処理
summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Tags:["ExWeapons.AEC"],Effects:[{Id:25,Amplifier:127b,Duration:2,ShowParticles:0b}]}
execute as @e[type=area_effect_cloud,tag=ExWeapons.AEC,sort=nearest,limit=1] at @s run tp @s