#> score_damage:core/health_subtract
#
# MobのHealthを減算する
#
# @within function score_damage:core/attack

#> Temp
# @private
    #declare objective ScoreToHealth
    #declare score_holder $SubtractedHealth
    #declare score_holder $HasDependency

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage ScoreDamageCore < $Health ScoreDamageCore
# Health減算
    scoreboard players operation $SubtractedHealth ScoreDamageCore = $Health ScoreDamageCore
    scoreboard players operation $SubtractedHealth ScoreDamageCore -= $Damage ScoreDamageCore
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $SubtractedHealth ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $HasDependency ScoreDamageCore unless score @s ScoreToHealth matches 0.. run scoreboard players operation @s ScoreToHealth = $Health ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $HasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedHealth ScoreDamageCore matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $SubtractedHealth ScoreDamageCore
    # Common
        execute if score $SubtractedHealth ScoreDamageCore matches ..0 run function exweapons:core/other/death/
# 演出
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if entity @e[tag=tmp.owner,limit=1,sort=nearest] if data storage score_damage: Argument{BypassKB:0b} run damage @s 0.000001 exweapons:mob_attack by @e[tag=tmp.owner,limit=1,sort=nearest]
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. unless entity @e[tag=tmp.owner,limit=1,sort=nearest] if data storage score_damage: Argument{BypassKB:0b} run damage @s 0.000001 exweapons:mob_attack
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if entity @e[tag=tmp.owner,limit=1,sort=nearest] if data storage score_damage: Argument{BypassKB:1b} run damage @s 0.000001 minecraft:bad_respawn_point by @e[tag=tmp.owner,limit=1,sort=nearest]
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. unless entity @e[tag=tmp.owner,limit=1,sort=nearest] if data storage score_damage: Argument{BypassKB:1b} run damage @s 0.000001 minecraft:bad_respawn_point
    
    execute if data storage score_damage: Argument{DisableParticle:0b} at @s run function score_damage:core/damage_indicator
# リセット
    scoreboard players reset $SubtractedHealth ScoreDamageCore
    scoreboard players reset $HasDependency ScoreDamageCore