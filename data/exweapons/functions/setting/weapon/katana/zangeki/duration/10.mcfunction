# 斬撃Duration+10
scoreboard players add $katana_ZangekiDuration ExWeapons.setting 10
execute store result storage exweapons: text.katana.zangeki_duration float 1 run scoreboard players get $katana_ZangekiDuration ExWeapons.setting
function exweapons:setting/weapon/katana/text