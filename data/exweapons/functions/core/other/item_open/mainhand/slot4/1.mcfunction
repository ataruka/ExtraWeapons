# メインハンド開封！
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rng ExWeapons.rnd = #5 ExWeapons.rng
scoreboard players operation #Rng ExWeapons.rnd += #3 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rng ExWeapons.rnd
scoreboard players set #check ExWeapons.rnd 0
### 詳細アビリティ達
execute if entity @s[scores={ExWeapons.rnd=7}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/armor
execute if entity @s[scores={ExWeapons.rnd=6}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/armortoughness
execute if entity @s[scores={ExWeapons.rnd=5}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/attackdamage
execute if entity @s[scores={ExWeapons.rnd=4}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/exattackdamage
execute if entity @s[scores={ExWeapons.rnd=3}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/exattackprotection
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/knockbackresistance
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/luck
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/status/status/detail/maxhealth