# 読み込み時の値適応-Intelligence
## Ex攻撃力+0.2
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ExAttackDamage 20
## Ex攻撃力+5%
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ExAttackDamageMul 50
## Exダメージ軽減+3%
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ExAttackProtectionMul 30
## スコア引く
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run scoreboard players remove @s ExWeapons.Ability.Intelligence 1
# 再帰
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run function exweapons:core/start/ability/conf/intelligence