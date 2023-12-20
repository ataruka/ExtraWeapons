# メインハンド開封！
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rng ExWeapons.rnd = #5 ExWeapons.rng
scoreboard players operation #Rng ExWeapons.rnd += #4 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rng ExWeapons.rnd
scoreboard players set #check ExWeapons.rnd 0
### 詳細アビリティ達
execute if entity @s[scores={ExWeapons.rnd=8}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/armor
execute if entity @s[scores={ExWeapons.rnd=7}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/armortoughness
execute if entity @s[scores={ExWeapons.rnd=6}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/attackdamage
execute if entity @s[scores={ExWeapons.rnd=5}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/attackspeed
execute if entity @s[scores={ExWeapons.rnd=4}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/exattackdamage
execute if entity @s[scores={ExWeapons.rnd=3}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/exattackprotection
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/knockbackresistance
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/maxhealth
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/mul/movementspeed