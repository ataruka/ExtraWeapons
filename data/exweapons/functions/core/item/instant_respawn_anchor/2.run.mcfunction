# 実行
 playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 2 1
 playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 2
 particle minecraft:witch ~ ~ ~ 0 0 0 1 100 force @s
 tellraw @s {"translate": "block.minecraft.set_spawn"}
 spawnpoint @s ~ ~ ~
 function exweapons:core/other/break/5/0.run