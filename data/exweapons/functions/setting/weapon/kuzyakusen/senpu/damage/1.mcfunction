# 旋風ダメージ+1
scoreboard players add $kuzyakusen_SenpuDamage ExWeapons.setting 10
execute if score $kuzyakusen_SenpuDamage ExWeapons.setting matches 16383.. run scoreboard players set $kuzyakusen_SenpuDamage ExWeapons.setting 16383
execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.1 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text