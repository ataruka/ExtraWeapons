playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text": "---------------------------------","color": "yellow"}
tellraw @s [{"text": "          "},{"text": "☆八〇式刀剣の詳細設定☆","hoverEvent": {"action": "show_text","value": {"text": "八〇式刀剣の詳細設定です。\nここで八〇式刀剣の詳細設定をします"}}}]
tellraw @s {"text": " "}
tellraw @s [{"text": "            "},{"text": "斬撃ダメージ","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "斬撃のダメージ値を\n0から1638.4で指定できます"}}}]
tellraw @s [{"text": "[-0.1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-0.1"}},{"text": "[-1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-1"}},{"text": "[-5]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-5"}},{"text": "[-10]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-10"}},{"text": "[-50]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-50"}},{"text": "[-100]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/-100"}}]
tellraw @s [{"text": "現在","color": "white"},{"nbt":"text.katana.zangeki_damage","storage":"exweapons:","color": "white","hoverEvent": {"action": "show_text","value": [{"text": "リセット\nこの値を初期値に"},{"text": "リセット","underlined": true},{"text": "します"}]},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/reset"}}]
tellraw @s [{"text": "[+0.1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/0.1"}},{"text": "[+1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/1"}},{"text": "[+5]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/5"}},{"text": "[+10]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/10"}},{"text": "[+50]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/50"}},{"text": "[+100]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/damage/100"}}]
tellraw @s [{"text": "            "},{"text": "斬撃継続時間","underlined": true,"hoverEvent": {"action": "show_text","value": [{"text": "斬撃の継続時間(射程距離)を0以上で指定できます。\n無限に継続時間を長くできますが\n"},{"text": "長くしすぎると正常に動かなくなる可能性があり、重くなる原因にも繋がります","color": "red"}]}}]
tellraw @s [{"text": "[-1]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/-1"}},{"text": "[-5]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/-5"}},{"text": "[-10]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/-10"}},{"text": "[-50]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/-50"}},{"text": "[-100]","color": "aqua","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/-100"}}]
tellraw @s [{"text": "現在","color": "white"},{"nbt":"text.katana.zangeki_duration","storage":"exweapons:","color": "white","hoverEvent": {"action": "show_text","value": [{"text": "リセット\nこの値を初期値に"},{"text": "リセット","underlined": true},{"text": "します"}]},"clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/reset"}}]
tellraw @s [{"text": "[+1]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/1"}},{"text": "[+5]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/5"}},{"text": "[+10]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/10"}},{"text": "[+50]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/50"}},{"text": "[+100]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/katana/zangeki/duration/100"}}]
tellraw @s {"text": " "}
tellraw @s {"text": "[←]","color": "gold","clickEvent": {"action": "run_command","value": "/function exweapons:setting/weapon/text"}}
tellraw @s {"text": "---------------------------------","color": "yellow"}