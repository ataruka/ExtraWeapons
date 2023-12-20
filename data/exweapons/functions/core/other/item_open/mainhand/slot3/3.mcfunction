# メインハンド開封！
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rng ExWeapons.rnd = #10 ExWeapons.rng
scoreboard players operation #Rng ExWeapons.rnd += #6 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rng ExWeapons.rnd
scoreboard players set #check ExWeapons.rnd 0
### 属性アビリティ達
execute if entity @s[scores={ExWeapons.rnd=15}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/voidprotection
execute if entity @s[scores={ExWeapons.rnd=14}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/voiddamage
execute if entity @s[scores={ExWeapons.rnd=13}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/thunderprotection
execute if entity @s[scores={ExWeapons.rnd=12}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/thunderdamage
execute if entity @s[scores={ExWeapons.rnd=11}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/muprotection
execute if entity @s[scores={ExWeapons.rnd=10}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/mudamage
execute if entity @s[scores={ExWeapons.rnd=9}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/grassprotection
execute if entity @s[scores={ExWeapons.rnd=8}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/grassdamage
execute if entity @s[scores={ExWeapons.rnd=7}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/frostprotection
execute if entity @s[scores={ExWeapons.rnd=6}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/frostdamage
execute if entity @s[scores={ExWeapons.rnd=5}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/fireprotection
execute if entity @s[scores={ExWeapons.rnd=4}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/firedamage
execute if entity @s[scores={ExWeapons.rnd=3}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/waterprotection
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/waterdamage
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/windprotection
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/attribute/winddamage