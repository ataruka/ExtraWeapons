playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1 
tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "          "},{"text": "☆八〇式刀剣の詳細設定☆","hoverEvent": {"action": "show_text","value": {"text": "八〇式刀剣の詳細設定です。\nここで八〇式刀剣の詳細設定をします"}}}]
tellraw @s {"text": " "}
tellraw @s {"text": "[-100]"}
tellraw @s {"text": " "}
tellraw @s {"text": "[←]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/text"}}
tellraw @s {"text": "---------------------------------","color": "yellow"}