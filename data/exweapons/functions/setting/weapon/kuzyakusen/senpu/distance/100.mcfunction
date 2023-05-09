# 旋風Distance+100
scoreboard players add $kuzyakusen_SenpuDistance ExWeapons.setting 100
execute store result storage exweapons: text.kuzyakusen.senpu_distance float 0.1 run scoreboard players get $kuzyakusen_SenpuDistance ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text