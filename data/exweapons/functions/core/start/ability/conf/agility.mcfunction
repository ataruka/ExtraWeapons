# 読み込み時の値適応-Agility
## 移動速度+3%
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run scoreboard players add @s ExWeapons.DetailAbility.MovementSpeed 30
## 攻撃速度+1%
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run scoreboard players add @s ExWeapons.DetailAbility.AttackSpeed 10
## 幸運+0.1
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run scoreboard players add @s ExWeapons.DetailAbility.Luck 10
## スコア引く
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run scoreboard players remove @s ExWeapons.Ability.Agility 1
# 再帰
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run function exweapons:core/start/ability/conf/agility