# 斬撃Distance+100
scoreboard players add $katana_ZangekiDistance ExWeapons.setting 100
execute store result storage exweapons: text.katana.zangeki_distance float 1 run scoreboard players get $katana_ZangekiDistance ExWeapons.setting
function exweapons:setting/weapon/katana/text