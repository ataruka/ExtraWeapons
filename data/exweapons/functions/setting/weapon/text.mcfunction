playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1 
tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "                  "},{"text": "☆武器設定☆","hoverEvent": {"action": "show_text","value": {"text": "武器の設定リストです。\nここで武器関連の設定をします\nまたここから武器を選ぶ事で、詳細設定を行えます"}}}]
tellraw @s {"text": " "}
tellraw @s [{"text": "                  "},{"text": "ガンブレード","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "ガンブレードの設定です。\nガンブレードの詳細な設定が出来ます。"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/gunblade/text"}}]
tellraw @s [{"text": "                   "},{"text": "八〇式刀剣","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "八〇式刀剣の設定です。\n八〇式刀剣の詳細な設定が出来ます。"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/text"}}]
tellraw @s [{"text": "                   "},{"text": "孔雀扇","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "孔雀扇の設定です。\n孔雀扇の詳細な設定が出来ます。"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/text"}}]
tellraw @s {"text": " "}
tellraw @s {"text": "[←]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/text"}}
tellraw @s {"text": "---------------------------------","color": "yellow"}