# 読み込み時の値適応
## 基本ability
function exweapons:core/start/ability/conf/mul
execute if entity @s[scores={ExWeapons.Ability.Strength=1..}] run function exweapons:core/start/ability/conf/strength
execute if entity @s[scores={ExWeapons.Ability.Intelligence=1..}] run function exweapons:core/start/ability/conf/intelligence
execute if entity @s[scores={ExWeapons.Ability.Agility=1..}] run function exweapons:core/start/ability/conf/agility
execute if entity @s[scores={ExWeapons.Ability.Defense=1..}] run function exweapons:core/start/ability/conf/defense
execute if entity @s[scores={ExWeapons.Ability.Dexterity=1..}] run function exweapons:core/start/ability/conf/dexterity
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
execute unless score @s ExWeapons.DetailAbility.AttackDamageMul = $AttackDamageMul ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/attack_damage
execute unless score @s ExWeapons.DetailAbility.ArmorMul = $ArmorMul ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/armor
execute unless score @s ExWeapons.DetailAbility.ArmorToughnessMul = $ArmorToughnessMul ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/armor_tough
execute unless score @s ExWeapons.DetailAbility.KnockbackResistanceMul = $KnockbackResistanceMul ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/knockback_reg
execute unless score @s ExWeapons.DetailAbility.MovementSpeed = $MovementSpeed ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/movementspeed
execute unless score @s ExWeapons.DetailAbility.AttackSpeed = $AttackSpeed ExWeapons.rng run function exweapons:core/start/ability/conf/detail/mul/attack_speed