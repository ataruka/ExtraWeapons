# 斬撃Distance-10
scoreboard players remove $katana_ZangekiDistance ExWeapons.setting 10
execute if score $katana_ZangekiDistance ExWeapons.setting matches ..0 run scoreboard players set $katana_ZangekiDistance ExWeapons.setting 0
execute store result storage exweapons: text.katana.zangeki_distance float 1 run scoreboard players get $katana_ZangekiDistance ExWeapons.setting
function exweapons:setting/weapon/katana/text