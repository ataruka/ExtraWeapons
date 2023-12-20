# particle
## 処理
execute anchored eyes run particle minecraft:flash ^-0.3 ^-0.6 ^ 0.2 0.2 0.2 1 15 force
playsound minecraft:exweapons.block.smithing_table3 master @s ~ ~ ~ 2 1.5 1
playsound minecraft:exweapons.block.smithing_table3 master @s ~ ~ ~ 2 1.5 1
playsound minecraft:exweapons.block.smithing_table3 master @s ~ ~ ~ 2 1.5 1
### 乗る
tag @s add ExWeapons.katana.useCombo6sneak
summon block_display ~ ~0.2 ~ {NoGravity:1b,Silent:1b,Tags:["exweapons.katana.use6sneak"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}
ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=exweapons.katana.use6sneak]