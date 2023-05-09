# 旋風ダメージ-50
scoreboard players remove $kuzyakusen_SenpuDamage ExWeapons.setting 500
execute if score $kuzyakusen_SenpuDamage ExWeapons.setting matches ..0 run scoreboard players set $kuzyakusen_SenpuDamage ExWeapons.setting 0
execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.1 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text