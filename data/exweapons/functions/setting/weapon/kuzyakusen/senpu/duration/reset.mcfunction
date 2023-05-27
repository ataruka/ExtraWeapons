# 旋風DurationReset
scoreboard players set $kuzyakusen_SenpuDuration ExWeapons.setting 80
execute store result storage exweapons: text.kuzyakusen.senpu_duration float 1 run scoreboard players get $kuzyakusen_SenpuDuration ExWeapons.setting
function exweapons:setting/weapon/kuzyakusen/text