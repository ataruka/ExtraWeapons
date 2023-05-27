# 旋風Duration-1
scoreboard players remove $kuzyakusen_SenpuDuration ExWeapons.setting 1
execute if score $kuzyakusen_SenpuDuration ExWeapons.setting matches ..0 run scoreboard players set $kuzyakusen_SenpuDuration ExWeapons.setting 0
execute store result storage exweapons: text.kuzyakusen.senpu_duration float 1 run scoreboard players get $kuzyakusen_SenpuDuration ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text