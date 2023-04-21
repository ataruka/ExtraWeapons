# 斬撃ダメージreset
scoreboard players set $katana_ZangekiDamage ExWeapons.setting 120
execute store result storage exweapons: text.katana.zangeki_damage float 0.1 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
function exweapons:setting/weapon/katana/text