#> better_collision:core/get_delta_y
#
# 小数点以下のY座標を取得する
#
# @within function better_collision:core/only_height
    summon marker ~ ~ ~ {Tags:["Better_Collision_PosMarker"]}

# 座標内の位置を取得
    execute unless block ~ ~ ~ #better_collision:req_100000 run function better_collision:core/get_delta_y_not_100000
    execute if block ~ ~ ~ #better_collision:req_100000 run function better_collision:core/get_delta_y_100000
    kill @e[tag=Better_Collision_PosMarker,limit=1]