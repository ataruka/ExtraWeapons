# ダメージ計算
 scoreboard players operation @s ExWeapons.damagerng = $Damage ExWeapons.rng
 execute if score $DamageType ExWeapons.rng matches 3
# ダメージ適用
 scoreboard players operation $Tmp ExWeapons.rng = @s ExWeapons.damagerng
 function exweapons:core/damage/run