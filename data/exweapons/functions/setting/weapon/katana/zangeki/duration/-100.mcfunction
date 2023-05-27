# 斬撃Duration-100
scoreboard players remove $katana_ZangekiDuration ExWeapons.setting 100
execute if score $katana_ZangekiDuration ExWeapons.setting matches ..0 run scoreboard players set $katana_ZangekiDuration ExWeapons.setting 0
execute store result storage exweapons: text.katana.zangeki_duration float 1 run scoreboard players get $katana_ZangekiDuration ExWeapons.setting
function exweapons:setting/weapon/katana/text