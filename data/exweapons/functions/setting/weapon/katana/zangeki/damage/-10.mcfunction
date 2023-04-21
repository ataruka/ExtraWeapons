# 斬撃ダメージ-10
scoreboard players remove $katana_ZangekiDamage ExWeapons.setting 100
execute if score $katana_ZangekiDamage ExWeapons.setting matches ..0 run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 0
execute store result storage exweapons: text.katana.zangeki_damage float 0.1 run scoreboard players get $katana_ZangekiDamage ExWeapons.setting
function exweapons:setting/weapon/katana/text