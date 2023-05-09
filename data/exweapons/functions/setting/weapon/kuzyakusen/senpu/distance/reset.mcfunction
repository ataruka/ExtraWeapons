# 旋風DistanceReset
scoreboard players set $kuzyakusen_SenpuDistance ExWeapons.setting 80
execute store result storage exweapons: text.kuzyakusen.senpu_distance float 0.1 run scoreboard players get $kuzyakusen_SenpuDistance ExWeapons.setting
function exweapons:setting/weapon/katana/text