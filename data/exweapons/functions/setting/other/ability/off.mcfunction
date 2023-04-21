#offにする
execute if score $Ability ExWeapons.setting matches 0 run tag @s add ExWeapons.TextSetting_Failure
execute if score $Ability ExWeapons.setting matches 0 run tag @s add ExWeapons.TextSetting_Failure_
execute unless score $Ability ExWeapons.setting matches 0 run scoreboard players set $Ability ExWeapons.setting 0
function exweapons:setting/other/text
execute if entity @s[tag=ExWeapons.TextSetting_Failure_] run tellraw @s {"text": "ERROR>> すでにAbilityはoffになっています。","color": "red"}
tag @s remove ExWeapons.TextSetting_Failure_