# 実行
 effect give @s darkness 10 0 true
 effect give @s blindness 10 0 true
 effect give @e[limit=10,sort=nearest,type=!#exweapons:non_living,type=!#exweapons:protect] darkness 15 0 true
 effect give @s weakness 10 1 true
 effect give @s slowness 10 0 true
 effect give @s invisibility 25 0 true
 effect give @s resistance 15 4 true
 spreadplayers ~ ~ 0 50 false @e[limit=10,sort=nearest,type=!#exweapons:non_living,type=!#exweapons:protect]
 advancement revoke @s only exweapons:use/makeshift_potion