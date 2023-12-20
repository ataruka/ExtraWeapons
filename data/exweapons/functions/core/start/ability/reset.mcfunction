# 読み込み時の初期リセット
## 基本Ability
### 数値(1倍の値)
execute unless entity @s[scores={ExWeapons.Ability.Strength=0}] run scoreboard players set @s ExWeapons.Ability.Strength 0
execute unless entity @s[scores={ExWeapons.Ability.Intelligence=0}] run scoreboard players set @s ExWeapons.Ability.Intelligence 0
execute unless entity @s[scores={ExWeapons.Ability.Agility=0}] run scoreboard players set @s ExWeapons.Ability.Agility 0
execute unless entity @s[scores={ExWeapons.Ability.Defense=0}] run scoreboard players set @s ExWeapons.Ability.Defense 0
execute unless entity @s[scores={ExWeapons.Ability.Dexterity=0}] run scoreboard players set @s ExWeapons.Ability.Dexterity 0
### 倍率(1+値%x1000) 
execute unless entity @s[scores={ExWeapons.Ability.StrengthMul=0}] run scoreboard players set @s ExWeapons.Ability.StrengthMul 0
execute unless entity @s[scores={ExWeapons.Ability.IntelligenceMul=0}] run scoreboard players set @s ExWeapons.Ability.IntelligenceMul 0
execute unless entity @s[scores={ExWeapons.Ability.AgilityMul=0}] run scoreboard players set @s ExWeapons.Ability.AgilityMul 0
execute unless entity @s[scores={ExWeapons.Ability.DefenseMul=0}] run scoreboard players set @s ExWeapons.Ability.DefenseMul 0
execute unless entity @s[scores={ExWeapons.Ability.DexterityMul=0}] run scoreboard players set @s ExWeapons.Ability.DexterityMul 0
## 詳細Ability
### 数値(1倍の値)
execute unless entity @s[scores={ExWeapons.DetailAbility.Health=0}] run scoreboard players set @s ExWeapons.DetailAbility.Health 0
execute unless entity @s[scores={ExWeapons.DetailAbility.AttackDamage=0}] run scoreboard players set @s ExWeapons.DetailAbility.AttackDamage 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamage=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamage 0
execute unless entity @s[scores={ExWeapons.DetailAbility.KnockbackResistance=0}] run scoreboard players set @s ExWeapons.DetailAbility.KnockbackResistance 0
execute unless entity @s[scores={ExWeapons.DetailAbility.Armor=0}] run scoreboard players set @s ExWeapons.DetailAbility.Armor 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ArmorToughness=0}] run scoreboard players set @s ExWeapons.DetailAbility.ArmorToughness 0
execute unless entity @s[scores={ExWeapons.DetailAbility.Luck=0}] run scoreboard players set @s ExWeapons.DetailAbility.Luck 0
### ※ScoreToDamageモードでのみ稼働...ではなくなった
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtection=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtection 0
### 倍率(1+値%x1000) 
execute unless entity @s[scores={ExWeapons.DetailAbility.HealthMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.HealthMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.AttackDamageMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.AttackDamageMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ArmorMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.ArmorMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ArmorToughnessMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.ArmorToughnessMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.KnockbackResistanceMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.KnockbackResistanceMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.MovementSpeed=0}] run scoreboard players set @s ExWeapons.DetailAbility.MovementSpeed 0
execute unless entity @s[scores={ExWeapons.DetailAbility.AttackSpeed=0}] run scoreboard players set @s ExWeapons.DetailAbility.AttackSpeed 0
### 倍率(1+値%x1000) 
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_armor1=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_armor1 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_armor2=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_armor2 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_armor3=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_armor3 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_armor4=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_armor4 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_mainhand=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_mainhand 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_offhand=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_offhand 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 1000
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackDurationMul=1000}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackDurationMul 1000
### ※ScoreToDamageモードでのみ稼働...ではなくなった
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_armor1=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor1 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_armor2=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor2 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_armor3=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor3 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_armor4=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor4 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_mainhand=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_mainhand 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_offhand=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_offhand 0
execute unless entity @s[scores={ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor=0}] run scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 0
## 属性Ability(1+値%x100)
execute unless entity @s[scores={ExWeapons.AttributeAbility.MuDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.MuDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.FireDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.FireDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.WaterDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.WaterDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.ThunderDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.ThunderDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.GrassDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.GrassDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.WindDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.WindDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.FrostDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.FrostDamage 1000
execute unless entity @s[scores={ExWeapons.AttributeAbility.VoidDamage=1000}] run scoreboard players set @s ExWeapons.AttributeAbility.VoidDamage 1000
### ※ScoreToDamageモードでのみ稼働...ではなくなった
execute unless entity @s[scores={ExWeapons.AttributeAbility.MuProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.MuProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.FireProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.FireProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.WaterProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.WaterProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.ThunderProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.ThunderProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.GrassProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.GrassProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.WindProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.WindProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.FrostProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.FrostProtection 0
execute unless entity @s[scores={ExWeapons.AttributeAbility.VoidProtection=0}] run scoreboard players set @s ExWeapons.AttributeAbility.VoidProtection 0
tag @s remove status.update