## リセット
data remove storage mt: Seed[-4][-4][-4][-4][6]
data remove storage mt: Seed[-4][-4][-4][-4][5]
data remove storage mt: Seed[-4][-4][-4][-4][4]
data remove storage mt: Seed[-4][-4][-4][6]
data remove storage mt: Seed[-4][-4][-4][5]
data remove storage mt: Seed[-4][-4][-4][4]
data remove storage mt: Seed[-4][-4][6]
data remove storage mt: Seed[-4][-4][5]
data remove storage mt: Seed[-4][-4][4]
data remove storage mt: Seed[-4][6]
data remove storage mt: Seed[-4][5]
data remove storage mt: Seed[-4][4]
data remove storage mt: Seed[6]
data remove storage mt: Seed[5]
data remove storage mt: Seed[4]


scoreboard players operation $MT-Seed MT-Input1 *= $MT_2^22 MT-Const
execute if score $MT-Seed MT-Input1 matches 1073741824.. run data modify storage mt: Seed append value []
execute if score $MT-Seed MT-Input1 matches ..-1073741825 run data modify storage mt: Seed append from storage mt: 2[]
execute if score $MT-Seed MT-Input1 matches -1073741824..-1 run data modify storage mt: Seed append from storage mt: 3[]


scoreboard players operation $MT-Seed MT-Input1 *= $MT_2^2 MT-Const
execute if score $MT-Seed MT-Input1 matches 1073741824.. run data modify storage mt: Seed[-4] append value []
execute if score $MT-Seed MT-Input1 matches ..-1073741825 run data modify storage mt: Seed[-4] append from storage mt: 2[]
execute if score $MT-Seed MT-Input1 matches -1073741824..-1 run data modify storage mt: Seed[-4] append from storage mt: 3[]

scoreboard players operation $MT-Seed MT-Input1 *= $MT_2^2 MT-Const
execute if score $MT-Seed MT-Input1 matches 1073741824.. run data modify storage mt: Seed[-4][-4] append value []
execute if score $MT-Seed MT-Input1 matches ..-1073741825 run data modify storage mt: Seed[-4][-4] append from storage mt: 2[]
execute if score $MT-Seed MT-Input1 matches -1073741824..-1 run data modify storage mt: Seed[-4][-4] append from storage mt: 3[]

scoreboard players operation $MT-Seed MT-Input1 *= $MT_2^2 MT-Const
execute if score $MT-Seed MT-Input1 matches 1073741824.. run data modify storage mt: Seed[-4][-4][-4] append value []
execute if score $MT-Seed MT-Input1 matches ..-1073741825 run data modify storage mt: Seed[-4][-4][-4] append from storage mt: 2[]
execute if score $MT-Seed MT-Input1 matches -1073741824..-1 run data modify storage mt: Seed[-4][-4][-4] append from storage mt: 3[]

scoreboard players operation $MT-Seed MT-Input1 *= $MT_2^2 MT-Const
execute if score $MT-Seed MT-Input1 matches 1073741824.. run data modify storage mt: Seed[-4][-4][-4][-4] append value {}
execute if score $MT-Seed MT-Input1 matches ..-1073741825 run data modify storage mt: Seed[-4][-4][-4][-4] append from storage mt: 2m[]
execute if score $MT-Seed MT-Input1 matches -1073741824..-1 run data modify storage mt: Seed[-4][-4][-4][-4] append from storage mt: 3m[]
