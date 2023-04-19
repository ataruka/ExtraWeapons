#offにする
execute if score $FriendlyFire ExWeapons.setting matches 0 run tellraw @s {"text": "ERROR>> すでにFriendlyFireはoffになっています。","color": "red"}
execute if score $FriendlyFire ExWeapons.setting matches 0 run tag @s add ExWeapons.TextSetting_Failure
execute unless score $FriendlyFire ExWeapons.setting matches 0 run scoreboard players set $FriendlyFire ExWeapons.setting 0
function exweapons:setting/other/text