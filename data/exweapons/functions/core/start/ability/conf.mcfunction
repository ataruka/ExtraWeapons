# 読み込み時の値適応
## 基本ability
function exweapons:core/start/ability/conf/strength
function exweapons:core/start/ability/conf/intelligence
function exweapons:core/start/ability/conf/agility
function exweapons:core/start/ability/conf/defense
function exweapons:core/start/ability/conf/dexterity
## 詳細ability
### Last値の設定
function exweapons:core/start/ability/last
execute unless score @s ExWeapons.DetailAbility.Health_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.Health_Last 0
execute unless score @s ExWeapons.DetailAbility.AttackDamage_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.AttackDamage_Last 0
execute unless score @s ExWeapons.DetailAbility.KnockbackResistance_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.KnockbackResistance_Last 0
execute unless score @s ExWeapons.DetailAbility.Armor_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.Armor_Last 0
execute unless score @s ExWeapons.DetailAbility.ArmorToughness_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.ArmorToughness_Last 0
execute unless score @s ExWeapons.DetailAbility.Luck_Last matches -2147483648..2147483647 run scoreboard players set @s ExWeapons.DetailAbility.Luck_Last 0
### 通常値
execute unless score @s ExWeapons.DetailAbility.Health = @s ExWeapons.DetailAbility.Health_Last run function exweapons:core/start/ability/conf/detail/max_health
execute unless score @s ExWeapons.DetailAbility.AttackDamage = @s ExWeapons.DetailAbility.AttackDamage_Last run function exweapons:core/start/ability/conf/detail/attack_damage
execute unless score @s ExWeapons.DetailAbility.KnockbackResistance = @s ExWeapons.DetailAbility.KnockbackResistance_Last run function exweapons:core/start/ability/conf/detail/knockback_reg
execute unless score @s ExWeapons.DetailAbility.Armor = @s ExWeapons.DetailAbility.Armor_Last run function exweapons:core/start/ability/conf/detail/armor
execute unless score @s ExWeapons.DetailAbility.ArmorToughness = @s ExWeapons.DetailAbility.ArmorToughness_Last run function exweapons:core/start/ability/conf/detail/armor_tough
execute unless score @s ExWeapons.DetailAbility.Luck = @s ExWeapons.DetailAbility.Luck_Last run function exweapons:core/start/ability/conf/detail/luck
### 乗算
execute unless score @s ExWeapons.DetailAbility.HealthMul = $HealthMul ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/max_health
#### ちょっと計算延長
execute if entity @s[nbt={Attributes:[{Modifiers:[{UUID:[I;107,105649,0,1]}]}]}] run say コマブロってすげー！