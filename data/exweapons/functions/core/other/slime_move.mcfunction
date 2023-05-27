# ゲームルール変更
 gamerule maxEntityCramming 0
# スライムを召喚
 scoreboard players remove @s ExWeapons.slimeMove 1
 summon magma_cube ^ ^-0.5 ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",Tags:["exweapons.slimemove","exweapons.protect"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
 execute if score @s ExWeapons.slimeMove matches 0.. run function exweapons:core/other/slime_move
# 2tick後戻す
 schedule function exweapons:core/other/slime_move_return 2t