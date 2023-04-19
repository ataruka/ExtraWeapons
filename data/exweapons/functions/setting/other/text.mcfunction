execute if entity @s[tag=!ExWeapons.TextSetting_Failure] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=ExWeapons.TextSetting_Failure] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=ExWeapons.TextSetting_Failure] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=ExWeapons.TextSetting_Failure] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=ExWeapons.TextSetting_Failure] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=ExWeapons.TextSetting_Failure] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
tag @s remove ExWeapons.TextSetting_Failure 
tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "              "},{"text": "☆その他の設定☆","hoverEvent": {"action": "show_text","value": {"text": "その他の設定です。\n色々な設定を行えます"}}}]
tellraw @s {"text": " "}
execute if score $FriendlyFire ExWeapons.setting matches 0 run tellraw @s [{"text": "FriendlyFire","color": "gray","hoverEvent": {"action": "show_text","value": {"text": "FriendlyFire。\noffにするとプレイヤー同士武器の特殊攻撃が当たらなくなります\n現在offです"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/other/friendlyfire/on"}}]
execute if score $FriendlyFire ExWeapons.setting matches 1 run tellraw @s [{"text": "FriendlyFire","color": "green","hoverEvent": {"action": "show_text","value": {"text": "FriendlyFire。\noffにするとプレイヤー同士武器の特殊攻撃が当たらなくなります\n現在onです"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/other/friendlyfire/off"}}]
tellraw @s {"text": " "}
tellraw @s {"text": "[←]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/text"}}
tellraw @s {"text": "---------------------------------","color": "yellow"}