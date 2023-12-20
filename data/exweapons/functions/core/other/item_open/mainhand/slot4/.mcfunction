# メインハンド開封！
## リセット
data remove storage open: Tmp
data modify storage open: Tmp[] set value {Slot:4}
## ランダマイズ
function exweapons:core/other/random_get
scoreboard players operation #Rng ExWeapons.rnd = #3 ExWeapons.rng
scoreboard players operation @s ExWeapons.rnd %= #Rng ExWeapons.rnd
scoreboard players set #check ExWeapons.rnd 0
### 属性アビリティたち
execute if entity @s[scores={ExWeapons.rnd=2}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/mainhand/slot4/3
### 詳細アビリティ%たち
execute if entity @s[scores={ExWeapons.rnd=1}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/mainhand/slot4/2
### 基本アビリティ%たち
execute if entity @s[scores={ExWeapons.rnd=0}] if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/mainhand/slot4/1