# 処理
## 代入
execute store result storage score_damage: Argument.Damage double 0.1 run scoreboard players get @s ExWeapons.damagerng
## 判別
execute if score $BypassArmor ExWeapons.rng matches 1 run data modify storage score_damage: Argument.BypassArmor set value true
execute if score $BypassResistance ExWeapons.rng matches 1 run data modify storage score_damage: Argument.BypassResistance set value true
execute if score $BypassEPF ExWeapons.rng matches 1 run data modify storage score_damage: Argument.EPF set value 0
function score_damage:api/attack
data remove storage score_damage: Argument