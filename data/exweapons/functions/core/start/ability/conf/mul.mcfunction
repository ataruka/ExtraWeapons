# 読み込み時の値適応-Mul全て
## Strength
scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.Ability.Strength
scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.Ability.StrengthMul
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation @s ExWeapons.Ability.Strength += $Tmp ExWeapons.rng
## Intelligence
scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.Ability.Intelligence
scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.Ability.IntelligenceMul
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation @s ExWeapons.Ability.Intelligence += $Tmp ExWeapons.rng
## Defense
scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.Ability.Defense
scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.Ability.DefenseMul
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation @s ExWeapons.Ability.Defense += $Tmp ExWeapons.rng
## Dexterity
scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.Ability.Dexterity
scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.Ability.DexterityMul
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation @s ExWeapons.Ability.Dexterity += $Tmp ExWeapons.rng
## Agility
scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.Ability.Agility
scoreboard players operation $Tmp ExWeapons.rng *= @s ExWeapons.Ability.AgilityMul
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation @s ExWeapons.Ability.Agility += $Tmp ExWeapons.rng