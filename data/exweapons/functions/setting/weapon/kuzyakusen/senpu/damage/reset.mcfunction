# 旋風ダメージreset
scoreboard players set $kuzyakusen_SenpuDamage ExWeapons.setting 100
execute store result storage exweapons: text.kuzyakusen.senpu_damage float 0.1 run scoreboard players get $kuzyakusen_SenpuDamage ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text