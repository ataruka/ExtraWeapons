# ダメージ計算
 scoreboard players operation @s ExWeapons.damagerng = $Damage ExWeapons.rng
 execute if score $isPhysics ExWeapons.rng matches 0 run scoreboard players operation @s ExWeapons.damagerng -= @s ExWeapons.DetailAbility.ExAttackProtection
 execute if score @s ExWeapons.damagerng matches ..0 run scoreboard players set @s ExWeapons.damagerng 0
 execute if score @s ExWeapons.Abnormal.grassThunderTick matches 1.. run function exweapons:core/damage/cal/abnormal/grassthunder
 execute if score @s ExWeapons.Abnormal.voidArmorTick matches 1.. run function exweapons:core/damage/cal/abnormal/voidarmor
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 1 run function exweapons:core/damage/cal/fire
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 2 run function exweapons:core/damage/cal/water
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 3 run function exweapons:core/damage/cal/thunder
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 4 run function exweapons:core/damage/cal/grass
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 5 run function exweapons:core/damage/cal/frost
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 6 run function exweapons:core/damage/cal/wind
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 7 run function exweapons:core/damage/cal/normal
 execute if score $isPhysics ExWeapons.rng matches 0 if score $DamageType ExWeapons.rng matches 8 run function exweapons:core/damage/cal/void
 execute if score $isPhysics ExWeapons.rng matches 0 run function exweapons:core/damage/cal/protection
# ダメージ適用
 scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.damagerng
 function exweapons:core/damage/score_to_health_run