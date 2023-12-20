# 読み込み時の値補正-装備品
execute if entity @s[nbt={SelectedItem:{tag:{exweapons:{Itemtag:{abilityid:"mainhand"},ability:[{Slot:6}]}}}}] run function exweapons:core/start/ability/equipment/mainhand/add_slot6
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{exweapons:{Itemtag:{abilityid:"offhand"},ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/offhand/add_slot6

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{exweapons:{Itemtag:{abilityid:"head"},ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/head/add_slot6
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{exweapons:{Itemtag:{abilityid:"chest"},ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/chest/add_slot6
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{exweapons:{Itemtag:{abilityid:"legs"},ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/legs/add_slot6
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{exweapons:{Itemtag:{abilityid:"feet"},ability:[{Slot:6}]}}}]}] run function exweapons:core/start/ability/equipment/feet/add_slot6
tag @s add status.update