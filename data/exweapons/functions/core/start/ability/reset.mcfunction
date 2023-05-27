# 読み込み時の初期リセット
## 基本Ability
### 数値(1倍の値)
scoreboard players set @s ExWeapons.Ability.Strength 0
scoreboard players set @s ExWeapons.Ability.Intelligence 0
scoreboard players set @s ExWeapons.Ability.Agility 0
scoreboard players set @s ExWeapons.Ability.Defense 0
scoreboard players set @s ExWeapons.Ability.Dexterity 0
### 倍率(1+値%x1000) 
scoreboard players set @s ExWeapons.Ability.StrengthMul 0
scoreboard players set @s ExWeapons.Ability.IntelligenceMul 0
scoreboard players set @s ExWeapons.Ability.AgilityMul 0
scoreboard players set @s ExWeapons.Ability.DefenseMul 0
scoreboard players set @s ExWeapons.Ability.DexterityMul 0
## 詳細Ability
### 数値(1倍の値)
scoreboard players set @s ExWeapons.DetailAbility.Health 0
scoreboard players set @s ExWeapons.DetailAbility.AttackDamage 0
scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamage 0
scoreboard players set @s ExWeapons.DetailAbility.KnockbackResistance 0
scoreboard players set @s ExWeapons.DetailAbility.Armor 0
scoreboard players set @s ExWeapons.DetailAbility.ArmorToughness 0
scoreboard players set @s ExWeapons.DetailAbility.Luck 0
### 倍率(1+値%x1000) 
scoreboard players set @s ExWeapons.DetailAbility.HealthMul 0
scoreboard players set @s ExWeapons.DetailAbility.AttackDamageMul 0
scoreboard players set @s ExWeapons.DetailAbility.ArmorMul 0
scoreboard players set @s ExWeapons.DetailAbility.ArmorToughnessMul 0
scoreboard players set @s ExWeapons.DetailAbility.KnockbackResistanceMul 0
scoreboard players set @s ExWeapons.DetailAbility.MovementSpeed 0
scoreboard players set @s ExWeapons.DetailAbility.AttackSpeed 0
### 倍率(1+値%x100) 
scoreboard players set @s ExWeapons.DetailAbility.ExAttackDamageMul 100
scoreboard players set @s ExWeapons.DetailAbility.ExAttackDurationMul 100
### ※ScoreToDamageモードでのみ稼働...ではなくなった
scoreboard players set @s ExWeapons.DetailAbility.ExAttackProtectionMul 0
## 属性Ability(1+値%x100)
scoreboard players set @s ExWeapons.AttributeAbility.MuDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.FireDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.WaterDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.ThunderDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.GrassDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.WindDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.FrostDamage 100
scoreboard players set @s ExWeapons.AttributeAbility.VoidDamage 100
### ※ScoreToDamageモードでのみ稼働...ではなくなった
scoreboard players set @s ExWeapons.AttributeAbility.MuProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.FireProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.WaterProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.ThunderProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.GrassProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.WindProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.FrostProtection 0
scoreboard players set @s ExWeapons.AttributeAbility.VoidProtection 0