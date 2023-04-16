tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "                 "},{"text": "☆設定リスト☆","hoverEvent": {"action": "show_text","value": {"text": "設定のリストです。\nここから選び、次の設定に行きます"}}}]
tellraw @s {"text": ""}
tellraw @s [{"text": "                    "},{"text": "武器設定","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "武器設定です。\n武器関連の設定が出来ます。"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/text"}}]
tellraw @s {"text": "---------------------------------","color": "yellow"}