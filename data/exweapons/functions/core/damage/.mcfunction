# ダメージ計算
 scoreboard players operation @s ExWeapons.damagerng = $Damage ExWeapons.rng
 execute if score $DamageType ExWeapons.rng matches 1 run function exweapons:core/damage/cal/fire
 execute if score $DamageType ExWeapons.rng matches 2 run function exweapons:core/damage/cal/water
 execute if score $DamageType ExWeapons.rng matches 3 run function exweapons:core/damage/cal/thunder
 execute if score $DamageType ExWeapons.rng matches 4 run function exweapons:core/damage/cal/grass
 execute if score $DamageType ExWeapons.rng matches 5 run function exweapons:core/damage/cal/frost
 execute if score $DamageType ExWeapons.rng matches 6 run function exweapons:core/damage/cal/wind
 execute if score $DamageType ExWeapons.rng matches 7 run function exweapons:core/damage/cal/normal
 execute if score $DamageType ExWeapons.rng matches 8 run function exweapons:core/damage/cal/void
 function exweapons:core/damage/cal/protection
# ダメージ適用
 scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.damagerng
 function exweapons:core/damage/run