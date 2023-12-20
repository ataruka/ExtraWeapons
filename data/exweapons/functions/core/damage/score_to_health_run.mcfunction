# 処理
## 代入
execute store result storage score_damage: Argument.Damage float 0.01 run scoreboard players get @s ExWeapons.damagerng
## 判別
execute if score $BypassArmor ExWeapons.rng matches 1 run data modify storage score_damage: Argument.BypassArmor set value true
execute if score $BypassResistance ExWeapons.rng matches 1 run data modify storage score_damage: Argument.BypassResistance set value true
execute if score $BypassKB ExWeapons.rng matches 1 run data modify storage score_damage: Argument.BypassKB set value true
execute if score $BypassEPF ExWeapons.rng matches 1 run data modify storage score_damage: Argument.EPF set value 0
execute if score $ArgumentDamageType ExWeapons.rng matches 1 run data modify storage score_damage: Argument.DamageType set value "Fire"
execute if score $ArgumentDamageType ExWeapons.rng matches 2 run data modify storage score_damage: Argument.DamageType set value "Blast"
execute if score $ArgumentDamageType ExWeapons.rng matches 3 run data modify storage score_damage: Argument.DamageType set value "Projectile"
execute if score $ArgumentDamageType ExWeapons.rng matches 4 run data modify storage score_damage: Argument.DamageType set value "Fall"
execute unless score $BypassInvulnerabilityTime ExWeapons.rng matches 1 run scoreboard players operation @s ExWeapons.InvulnerabilityTime = $InvulnerabilityTime ExWeapons.setting
function score_damage:api/attack
data remove storage score_damage: Argument