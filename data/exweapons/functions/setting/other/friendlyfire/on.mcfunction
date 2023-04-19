#onにする
execute if score $FriendlyFire ExWeapons.setting matches 1 run tellraw @s {"text": "ERROR>> すでにFriendlyFireはonになっています。","color": "red"}
execute if score $FriendlyFire ExWeapons.setting matches 1 run tag @s add ExWeapons.TextSetting_Failure
execute unless score $FriendlyFire ExWeapons.setting matches 1 run scoreboard players set $FriendlyFire ExWeapons.setting 1
function exweapons:setting/other/text