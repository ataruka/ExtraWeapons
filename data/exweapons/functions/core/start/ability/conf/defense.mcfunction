# 読み込み時の値適応-Defense
## 防御力+5%
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ArmorMul 50
## 防具強度+3%
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run scoreboard players add @s ExWeapons.DetailAbility.ArmorToughnessMul 30
## KnockBack耐性+0.05
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run scoreboard players add @s ExWeapons.DetailAbility.KnockbackResistance 5
## スコア引く
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run scoreboard players remove @s ExWeapons.Ability.Defense 1
# 再帰
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run function exweapons:core/start/ability/conf/defense