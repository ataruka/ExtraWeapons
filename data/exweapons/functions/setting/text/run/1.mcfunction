scoreboard players add @s ExWeapons.playerSetting_enable-animation 1
execute if score @s ExWeapons.playerSetting_enable-animation matches 2 run scoreboard players set @s ExWeapons.playerSetting_enable-animation 0
function exweapons:setting/text/run/0