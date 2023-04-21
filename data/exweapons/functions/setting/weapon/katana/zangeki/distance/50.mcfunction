# 斬撃Distance+50
scoreboard players add $katana_ZangekiDistance ExWeapons.setting 50
execute store result storage exweapons: text.katana.zangeki_distance float 1 run scoreboard players get $katana_ZangekiDistance ExWeapons.setting
function exweapons:setting/weapon/katana/text