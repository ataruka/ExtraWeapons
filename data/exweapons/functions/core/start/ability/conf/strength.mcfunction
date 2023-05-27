# 読み込み時の値適応-Strength
## 攻撃力+0.1
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run scoreboard players add @s ExWeapons.DetailAbility.AttackDamage 10
## 攻撃力+3%
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run scoreboard players add @s ExWeapons.DetailAbility.AttackDamageMul 30
## 最大HP+0.5
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run scoreboard players add @s ExWeapons.DetailAbility.Health 50
## スコア引く
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run scoreboard players remove @s ExWeapons.Ability.Strength 1
# 再帰
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run function exweapons:core/start/ability/conf/strength