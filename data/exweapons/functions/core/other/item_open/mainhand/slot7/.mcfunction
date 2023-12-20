# メインハンド開封！
## リセット
data remove storage open: Tmp
data modify storage open: Tmp[] set value {Slot:7}
scoreboard players set #check ExWeapons.rnd 0
### 属性アビリティたち
execute if score #check ExWeapons.rnd matches 0 run function exweapons:core/other/item_open/mainhand/slot7/1