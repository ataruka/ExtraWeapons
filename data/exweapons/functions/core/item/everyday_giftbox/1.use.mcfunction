# 実行
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 2
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 2
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 1
advancement grant @s only exweapons:minecraft/present_for_you
item replace entity @s weapon.mainhand with air
scoreboard players reset #randomRng ExWeapons.rng
scoreboard players operation #randomRng ExWeapons.rng += #100 ExWeapons.rng
function exweapons:core/other/random_get
scoreboard players operation @s ExWeapons.rnd %= #randomRng ExWeapons.rng
## 等級:SS
execute if score @s ExWeapons.rnd matches -1 run function exweapons:core/item/everyday_giftbox/use/2.ss
## 等級:S
execute if score @s ExWeapons.rnd matches 98..99 run function exweapons:core/item/everyday_giftbox/use/3.s
## 等級:A
execute if score @s ExWeapons.rnd matches 95..97 run function exweapons:core/item/everyday_giftbox/use/4.a
## 等級:B
execute if score @s ExWeapons.rnd matches 70..94 run function exweapons:core/item/everyday_giftbox/use/5.b
## 等級:C
execute if score @s ExWeapons.rnd matches 0..69 run function exweapons:core/item/everyday_giftbox/use/6.c
## 等級:D

scoreboard players reset @s ExWeapons.rnd