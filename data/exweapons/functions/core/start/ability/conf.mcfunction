# 読み込み時の値適応
## 基本ability
function exweapons:core/start/ability/conf/strength
function exweapons:core/start/ability/conf/intelligence
function exweapons:core/start/ability/conf/agility
function exweapons:core/start/ability/conf/defense
function exweapons:core/start/ability/conf/dexterity
## 詳細ability
execute if score @s ExWeapons.DetailAbility.Health matches 1.. run function exweapons:core/start/ability/conf/detail/max_health
execute if score @s ExWeapons.DetailAbility.AttackDamage matches 1.. run function exweapons:core/start/ability/conf/detail/attack_damage
execute if score @s ExWeapons.DetailAbility.KnockbackResistance matches 1.. run function exweapons:core/start/ability/conf/detail/knockback_reg
execute if score @s ExWeapons.DetailAbility.Armor matches 1.. run function exweapons:core/start/ability/conf/detail/armor
execute if score @s ExWeapons.DetailAbility.ArmorToughness matches 1.. run function exweapons:core/start/ability/conf/detail/armor_tough
execute if score @s ExWeapons.DetailAbility.Luck matches 1.. run function exweapons:core/start/ability/conf/detail/luck