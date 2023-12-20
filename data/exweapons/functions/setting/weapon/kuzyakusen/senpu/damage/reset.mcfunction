# 旋風ダメージreset
scoreboard players set $kuzyakusen_SenpuDamage ExWeapons.setting 1000
execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.01 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text