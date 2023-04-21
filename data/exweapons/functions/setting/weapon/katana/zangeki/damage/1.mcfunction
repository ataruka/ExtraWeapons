# 斬撃ダメージ+1
scoreboard players add $katana_ZangekiDamage ExWeapons.setting 10
execute if score $katana_ZangekiDamage ExWeapons.setting matches 16383.. run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 16383
execute store result storage exweapons: text.katana.zangeki_damage float 0.1 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
function exweapons:setting/weapon/katana/text