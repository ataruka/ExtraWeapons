# 斬撃ダメージreset
scoreboard players set $katana_ZangekiDamage ExWeapons.setting 1200
execute store result storage exweapons: text.katana.zangeki_damage float 0.01 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
function exweapons:setting/weapon/katana/text