# 読み込み時の値適応-Dexterity
## 攻撃速度+5%
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run scoreboard players add @s ExWeapons.DetailAbility.AttackSpeed 50
## 最大HP+3%
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run scoreboard players add @s ExWeapons.DetailAbility.HealthMul 30
## 防具強度+0.05
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ArmorToughness 5
## スコア引く
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run scoreboard players remove @s ExWeapons.Ability.Dexterity 1
# 再帰
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run function exweapons:core/start/ability/conf/dexterity