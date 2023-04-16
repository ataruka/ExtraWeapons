tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "                  "},{"text": "☆武器設定☆","hoverEvent": {"action": "show_text","value": {"text": "武器の設定リストです。\nここで武器関連の設定をします\nまたここから武器を選ぶ事で、詳細設定を行えます"}}}]
tellraw @s {"text": ""}
tellraw @s [{"text": "                  "},{"text": "ガンブレード","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "ガンブレードの設定です。\nガンブレードの詳細な設定が出来ます。"}},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/gunblade/text"}}]
tellraw @s {"text": "---------------------------------","color": "yellow"}