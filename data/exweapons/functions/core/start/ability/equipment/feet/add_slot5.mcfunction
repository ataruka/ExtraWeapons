# 読み込み時の値補正-メインハンド
## 基本1倍
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Strength
scoreboard players operation @s ExWeapons.Ability.Strength += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Defense
scoreboard players operation @s ExWeapons.Ability.Defense += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Dexterity
scoreboard players operation @s ExWeapons.Ability.Dexterity += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Intelligence
scoreboard players operation @s ExWeapons.Ability.Intelligence += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Agility
scoreboard players operation @s ExWeapons.Ability.Agility += $Tmp ExWeapons.rng
## 基本乗算10倍%(0.1%=1)
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Strength_Mul 10
scoreboard players operation @s ExWeapons.Ability.StrengthMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Defense_Mul 10
scoreboard players operation @s ExWeapons.Ability.DefenseMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Dexterity_Mul 10
scoreboard players operation @s ExWeapons.Ability.DexterityMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Intelligence_Mul 10
scoreboard players operation @s ExWeapons.Ability.IntelligenceMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].Agility_Mul 10
scoreboard players operation @s ExWeapons.Ability.AgilityMul += $Tmp ExWeapons.rng
## 詳細100倍(0.01=1)
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.MaxHealth 100
scoreboard players operation @s ExWeapons.DetailAbility.Health += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.AttackDamage 100
scoreboard players operation @s ExWeapons.DetailAbility.AttackDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Armor 100
scoreboard players operation @s ExWeapons.DetailAbility.Armor += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.ArmorToughness 100
scoreboard players operation @s ExWeapons.DetailAbility.ArmorToughness += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.ExAttackDamage 100
scoreboard players operation @s ExWeapons.DetailAbility.ExAttackDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.ExAttackProtection 100
scoreboard players operation @s ExWeapons.DetailAbility.ExAttackProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.KnockbackResistance 100
scoreboard players operation @s ExWeapons.DetailAbility.KnockbackResistance += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Luck 100
scoreboard players operation @s ExWeapons.DetailAbility.Luck += $Tmp ExWeapons.rng
## 詳細乗算10倍%(0.1%=1)
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_MaxHealth 10
scoreboard players operation @s ExWeapons.DetailAbility.HealthMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_AttackDamage 10
scoreboard players operation @s ExWeapons.DetailAbility.AttackDamageMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_Armor 10
scoreboard players operation @s ExWeapons.DetailAbility.ArmorMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_ArmorToughness 10
scoreboard players operation @s ExWeapons.DetailAbility.ArmorToughnessMul += $Tmp ExWeapons.rng
### 例外?
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_ExAttackDamage 10
scoreboard players operation @s ExWeapons.DetailAbility.ExAttackDamageMul_armor4 += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_ExAttackProtection 10
scoreboard players operation @s ExWeapons.DetailAbility.ExAttackProtectionMul_armor4 += $Tmp ExWeapons.rng

execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_KnockbackResistance 10
scoreboard players operation @s ExWeapons.DetailAbility.KnockbackResistanceMul += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_MovementSpeed 10
scoreboard players operation @s ExWeapons.DetailAbility.MovementSpeed += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].detail.Mul_AttackSpeed 10
scoreboard players operation @s ExWeapons.DetailAbility.AttackSpeed += $Tmp ExWeapons.rng
## 属性ダメージ/耐性1倍%(1%=1)
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.FireDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.FireDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.FireProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.FireProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.FrostDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.FrostDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.FrostProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.FrostProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.GrassDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.GrassDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.GrassProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.GrassProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.MuDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.MuDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.MuProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.MuProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.ThunderDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.ThunderDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.ThunderProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.ThunderProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.VoidDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.VoidDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.VoidProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.VoidProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.WaterDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.WaterDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.WaterProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.WaterProtection += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.WindDamage 10
scoreboard players operation @s ExWeapons.AttributeAbility.WindDamage += $Tmp ExWeapons.rng
execute store result score $Tmp ExWeapons.rng run data get entity @s Inventory[{Slot:100b}].tag.exweapons.ability[{Slot:5}].attribute.WindProtection 10
scoreboard players operation @s ExWeapons.AttributeAbility.WindProtection += $Tmp ExWeapons.rng