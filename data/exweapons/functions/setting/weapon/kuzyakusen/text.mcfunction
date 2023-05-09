playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1 
tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "          "},{"text": "☆孔雀扇の詳細設定☆","hoverEvent": {"action": "show_text","value": {"text": "孔雀扇の詳細設定です。\nここで孔雀扇の詳細設定をします"}}}]
tellraw @s {"text": " "}
tellraw @s [{"text": "            "},{"text": "旋風ダメージ","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "旋風のダメージ値を\n0から1638.4で指定できます"}}}]
tellraw @s [{"text": "[-0.1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-0.1"}},{"text": "[-1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-1"}},{"text": "[-5]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-5"}},{"text": "[-10]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-10"}},{"text": "[-50]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-50"}},{"text": "[-100]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/-100"}}]
tellraw @s [{"text": "現在","color": "white"},{"nbt":"text.kuzyakusen.senpu_damage","storage":"exweapons:","color": "white","hoverEvent": {"action": "show_text","value": [{"text": "リセット\nこの値を初期値に"},{"text": "リセット","underlined": true},{"text": "します"}]},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/reset"}}]
tellraw @s [{"text": "[+0.1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/0.1"}},{"text": "[+1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/1"}},{"text": "[+5]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/5"}},{"text": "[+10]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/10"}},{"text": "[+50]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/50"}},{"text": "[+100]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/damage/100"}}]
tellraw @s [{"text": "            "},{"text": "旋風射程距離","underlined": true,"hoverEvent": {"action": "show_text","value": [{"text": "旋風の射程距離を0以上で指定できます。\n無限に射程を長くできますが\n"},{"text": "長くしすぎると正常に動かなくなる可能性があり、重くなる原因にも繋がります","color": "red"}]}}]
tellraw @s [{"text": "[-1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/-1"}},{"text": "[-5]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/-5"}},{"text": "[-10]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/-10"}},{"text": "[-50]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/-50"}},{"text": "[-100]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/-100"}}]
tellraw @s [{"text": "現在","color": "white"},{"nbt":"text.kuzyakusen.senpu_damage","storage":"exweapons:","color": "white","hoverEvent": {"action": "show_text","value": [{"text": "リセット\nこの値を初期値に"},{"text": "リセット","underlined": true},{"text": "します"}]},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/reset"}}]
tellraw @s [{"text": "[+1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/1"}},{"text": "[+5]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/5"}},{"text": "[+10]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/10"}},{"text": "[+50]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/50"}},{"text": "[+100]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/kuzyakusen/senpu/distance/100"}}]
tellraw @s {"text": " "}
tellraw @s {"text": "[←]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/text"}}
tellraw @s {"text": "---------------------------------","color": "yellow"}