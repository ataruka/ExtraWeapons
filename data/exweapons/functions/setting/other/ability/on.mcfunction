#onにする
execute if score $Ability ExWeapons.setting matches 1 run tag @s add ExWeapons.TextSetting_Failure
execute if score $Ability ExWeapons.setting matches 1 run tag @s add ExWeapons.TextSetting_Failure_
execute unless score $Ability ExWeapons.setting matches 1 run scoreboard players set $Ability ExWeapons.setting 1
function exweapons:setting/other/text
execute if entity @s[tag=ExWeapons.TextSetting_Failure_] run tellraw @s {"text": "ERROR>> すでにAbilityはonになっています。","color": "red"}
tag @s remove ExWeapons.TextSetting_Failure_