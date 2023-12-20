# 読み込み時の値補正
function exweapons:core/start/ability/abnormal/add
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:0}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot0
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:1}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot1
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:2}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot2
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:3}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot3
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:4}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot4
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:5}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot5
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot6
execute if entity @s[nbt={Inventory:[{tag:{exweapons:{ability:[{Slot:7}]}}}]}] run function exweapons:core/start/ability/equipment/add_slot7
function exweapons:core/start/ability/add_limit