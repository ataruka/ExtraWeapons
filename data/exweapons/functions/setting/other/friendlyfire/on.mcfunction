#onにする
execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @s add ExWeapons.TextSetting_Failure
execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @s add ExWeapons.TextSetting_Failure_
execute unless score $FriendlyFire ExWeapons.setting matches 1 run scoreboard players set $FriendlyFire ExWeapons.setting 1
function exweapons:setting/other/text
execute if entity @s[tag=ExWeapons.TextSetting_Failure_] run tellraw @s {"text": "ERROR>> すでにFriendlyFireはonになっています。","color": "red"}