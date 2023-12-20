# 斬撃ダメージ+100
scoreboard players add $katana_ZangekiDamage ExWeapons.setting 1000
execute if score $katana_ZangekiDamage ExWeapons.setting matches 16383.. run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 16383
execute store result storage exweapons: text.katana.zangeki_damage float 0.01 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
function exweapons:setting/weapon/katana/text