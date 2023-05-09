# Area Effect Cloudを召喚
summon area_effect_cloud ~ ~ ~ {Tags:["exweapons_rnd"]}

# 召喚したAECのUUIDを取得
execute store result score @s ExWeapons.rnd run data get entity @e[tag=exweapons_rnd,distance=..0.01,limit=1] UUID[0]

# 1tick内に同じ人が複数回乱数生成をするとき
kill @e[tag=exweapons_rnd,distance=..0.01,limit=1]

# --------100分率の場合、取得したUUIDを100で割った時の余りを取得--------
# scoreboard players operation @s ExWeapons.rnd %= #100 ExWeapons.rng