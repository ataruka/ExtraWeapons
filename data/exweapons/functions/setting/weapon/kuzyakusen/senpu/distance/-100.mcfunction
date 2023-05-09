# 旋風Distance-100
scoreboard players remove $kuzyakusen_SenpuDistance ExWeapons.setting 100
execute if score $kuzyakusen_SenpuDistance ExWeapons.setting matches ..0 run scoreboard players set $kuzyakusen_SenpuDistance ExWeapons.setting 0
execute store result storage exweapons: text.kuzyakusen.senpu_distance float 0.1 run scoreboard players get $kuzyakusen_SenpuDistance ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text