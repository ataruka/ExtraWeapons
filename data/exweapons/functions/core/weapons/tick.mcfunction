# 刀-katana
## 斬撃-zangeki
scoreboard players remove @e[tag=exweapons.katana.zangeki] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki2] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki3] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=5..}] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki5] ExWeapons.katana.ZangekiTick 1
scoreboard players add @e[tag=exweapons.katana.zangeki5] ExWeapons.katana.ZangekiLimitOut 1
scoreboard players remove @e[scores={ExWeapons.katana.ZangekiReturn=0..}] ExWeapons.katana.ZangekiReturn 1
scoreboard players add @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=..5}] ExWeapons.katana.Zangeki3Time 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run effect give @s haste 1 4 true

execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/2.damage
execute as @e[tag=exweapons.katana.zangeki] at @s run function exweapons:core/weapons/katana/zangeki/3.tp
execute as @e[tag=exweapons.katana.zangeki2] at @s run function exweapons:core/weapons/katana/zangeki/2-2.damage
execute as @e[tag=exweapons.katana.zangeki2] at @s run function exweapons:core/weapons/katana/zangeki/3-2.tp
execute as @e[tag=exweapons.katana.zangeki3] at @s run function exweapons:core/weapons/katana/zangeki/2-3.damage
execute as @e[tag=exweapons.katana.zangeki3] at @s run function exweapons:core/weapons/katana/zangeki/3-3.tp
execute as @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=5..}] at @s run function exweapons:core/weapons/katana/zangeki/2-3.damage
execute as @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=5..}] at @s run function exweapons:core/weapons/katana/zangeki/3-3-2.tp
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=10}] at @s run function exweapons:core/weapons/katana/zangeki/6.limitout1
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=20}] at @s run function exweapons:core/weapons/katana/zangeki/6-2.limitout2
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=30}] at @s run function exweapons:core/weapons/katana/zangeki/6-3.limitout3
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=40..}] at @s run function exweapons:core/weapons/katana/zangeki/6-4.limitout4
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=1..}] at @s run function exweapons:core/weapons/katana/zangeki/6-0.limitout_
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiTick=..0}] at @s run function exweapons:core/weapons/katana/zangeki/8.limitout_return

execute as @e[scores={ExWeapons.katana.ZangekiTick=..0},tag=exweapons.katana.zangeki5] at @s run kill @s
execute as @e[scores={ExWeapons.katana.ZangekiTick=..0},tag=!exweapons.katana.zangeki5] at @s run kill @s

execute as @e[scores={ExWeapons.katana.ZangekiReturn=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run function exweapons:core/weapons/katana/zangeki/0.return
# 孔雀扇-kuzyakusen
## 旋風-senpu
scoreboard players remove @e[tag=exweapons.kuzyakusen.senpu] ExWeapons.kuzyakusen.SenpuTick 1
scoreboard players remove @e[tag=exweapons.kuzyakusen.senpuCT] ExWeapons.kuzyakusen.SenpuCT 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run effect give @s speed 1 1 true

execute as @e[tag=exweapons.kuzyakusen.senpu] at @s run function exweapons:core/weapons/kuzyakusen/senpu/2.damage
execute as @e[tag=exweapons.kuzyakusen.senpu] at @s run function exweapons:core/weapons/kuzyakusen/senpu/3.tp

execute as @e[scores={ExWeapons.kuzyakusen.SenpuTick=..0}] at @s run kill @s
tag @e[scores={ExWeapons.kuzyakusen.SenpuCT=..0}] remove exweapons.kuzyakusen.senpuCT
scoreboard players reset @e[scores={ExWeapons.kuzyakusen.SenpuCT=..0}] ExWeapons.kuzyakusen.SenpuCT
# 草付与の剣-grass_aspect_sword
