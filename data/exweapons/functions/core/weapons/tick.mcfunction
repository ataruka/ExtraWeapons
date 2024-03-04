# 刀-katana
## 斬撃-zangeki
scoreboard players remove @e[tag=exweapons.katana.zangeki,type=armor_stand] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki2,type=armor_stand] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki3,type=armor_stand] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki3-2,type=armor_stand,scores={ExWeapons.katana.Zangeki3Time=5..}] ExWeapons.katana.ZangekiTick 1
scoreboard players remove @e[tag=exweapons.katana.zangeki5,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.ZangekiTick 1
scoreboard players add @e[tag=exweapons.katana.zangeki5,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.ZangekiLimitOut 1
scoreboard players remove @e[scores={ExWeapons.katana.ZangekiReturn=0..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.ZangekiReturn 1
scoreboard players add @e[tag=exweapons.katana.zangeki3-2,type=armor_stand,scores={ExWeapons.katana.Zangeki3Time=..5}] ExWeapons.katana.Zangeki3Time 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}}] at @s run effect give @s haste 1 4 true

execute as @e[tag=exweapons.katana.zangeki,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2.damage
execute as @e[tag=exweapons.katana.zangeki,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3.tp
execute as @e[tag=exweapons.katana.zangeki2,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2-2.damage
execute as @e[tag=exweapons.katana.zangeki2,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3-2.tp
execute as @e[tag=exweapons.katana.zangeki3,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2-3.damage
execute as @e[tag=exweapons.katana.zangeki3,type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3-3.tp
execute as @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=5..},type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/2-3.damage
execute as @e[tag=exweapons.katana.zangeki3-2,scores={ExWeapons.katana.Zangeki3Time=5..},type=armor_stand] at @s run function exweapons:core/weapons/katana/zangeki/3-3-2.tp
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=10},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/6.limitout1
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=20},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/6-2.limitout2
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=30},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/6-3.limitout3
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=40..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/6-4.limitout4
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiLimitOut=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/6-0.limitout_
execute as @e[tag=exweapons.katana.zangeki5,scores={ExWeapons.katana.ZangekiTick=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/8.limitout_return

execute as @e[scores={ExWeapons.katana.ZangekiTick=..0},tag=!exweapons.katana.zangeki5,type=armor_stand] at @s run kill @s

execute as @e[scores={ExWeapons.katana.ZangekiReturn=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/zangeki/0.return
## Use
scoreboard players remove @e[scores={ExWeapons.katana.useReturn=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.useReturn 1

### Mode1
scoreboard players remove @e[scores={ExWeapons.katana.useComboReturn=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.useComboReturn 1
scoreboard players remove @e[scores={ExWeapons.katana.useCombo6sneak=1..},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.katana.useCombo6sneak 1

execute as @e[scores={ExWeapons.katana.useCombo6=0..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/use/mode1/0-6-.run

execute as @e[scores={ExWeapons.katana.useCombo6sneak=8},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/use/mode1/3-6-sneak.particle
execute as @e[scores={ExWeapons.katana.useCombo6sneak=1..10},type=!#exweapons:non_living,tag=ExWeapons.AllSelector,predicate=!exweapons:weapons/katana/use6sneak-mount_display] at @s run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=exweapons.katana.use6sneak,predicate=!exweapons:weapons/katana/use6sneak-display_mount]
execute as @e[type=block_display,tag=exweapons.katana.use6sneak,predicate=!exweapons:weapons/katana/use6sneak-display_mount] at @s run kill @s

execute as @e[scores={ExWeapons.katana.useChargeBreak1.tick=0..}] at @s run function exweapons:core/weapons/katana/use/chargebreak/4-1.tick
execute as @e[scores={ExWeapons.katana.useChargeBreak2.tick=0..}] at @s run function exweapons:core/weapons/katana/use/chargebreak/8-1.tick
### return
execute as @e[scores={ExWeapons.katana.useCombo6sneak=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/use/mode1/2-6.damage-sneak
execute as @e[scores={ExWeapons.katana.useReturn=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/use/1.return
execute as @e[scores={ExWeapons.katana.useComboReturn=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:001d}}}},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] at @s run function exweapons:core/weapons/katana/use/2.return
## ModeChange
### Mode0
scoreboard players remove @a[scores={ExWeapons.katana.ModeChange0=1..}] ExWeapons.katana.ModeChange0 1

title @a[scores={ExWeapons.katana.ModeChange0=45..50}] actionbar [{"text":">","color":"aqua"},{"text":">>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<<","color":"blue"},{"text":"<","color":"aqua"}]
title @a[scores={ExWeapons.katana.ModeChange0=40..45}] actionbar [{"text":">","color":"blue"},{"text":">","color":"aqua"},{"text":">","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<","color":"blue"},{"text":"<","color":"aqua"},{"text":"<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=30..35}] actionbar [{"text":">>","color":"blue"},{"text":">","color":"aqua"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<","color":"aqua"},{"text":"<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=25..30}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"aqua"},{"text":"<<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=20..25}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=15..20}] actionbar [{"text":">","color":"aqua"},{"text":">>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<<","color":"blue"},{"text":"<","color":"aqua"}]
title @a[scores={ExWeapons.katana.ModeChange0=10..15}] actionbar [{"text":">","color":"blue"},{"text":">","color":"aqua"},{"text":">","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<","color":"blue"},{"text":"<","color":"aqua"},{"text":"<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=5..10}] actionbar [{"text":">>","color":"blue"},{"text":">","color":"aqua"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"blue"},{"text":"<","color":"aqua"},{"text":"<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange0=..5}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_0","color":"aqua"},{"text":"<<<","color":"blue"}]
#### return
scoreboard players reset @a[scores={ExWeapons.katana.ModeChange0=..0}] ExWeapons.katana.ModeChange0
### Mode1
scoreboard players remove @a[scores={ExWeapons.katana.ModeChange1=1..}] ExWeapons.katana.ModeChange1 1

title @a[scores={ExWeapons.katana.ModeChange1=45..50}] actionbar [{"text":">","color":"aqua"},{"text":">>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<<","color":"blue"},{"text":"<","color":"aqua"}]
title @a[scores={ExWeapons.katana.ModeChange1=40..45}] actionbar [{"text":">","color":"blue"},{"text":">","color":"aqua"},{"text":">","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<","color":"blue"},{"text":"<","color":"aqua"},{"text":"<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=30..35}] actionbar [{"text":">>","color":"blue"},{"text":">","color":"aqua"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<","color":"aqua"},{"text":"<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=25..30}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"aqua"},{"text":"<<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=20..25}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=15..20}] actionbar [{"text":">","color":"aqua"},{"text":">>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<<","color":"blue"},{"text":"<","color":"aqua"}]
title @a[scores={ExWeapons.katana.ModeChange1=10..15}] actionbar [{"text":">","color":"blue"},{"text":">","color":"aqua"},{"text":">","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<","color":"blue"},{"text":"<","color":"aqua"},{"text":"<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=5..10}] actionbar [{"text":">>","color":"blue"},{"text":">","color":"aqua"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"blue"},{"text":"<","color":"aqua"},{"text":"<<","color":"blue"}]
title @a[scores={ExWeapons.katana.ModeChange1=..5}] actionbar [{"text":">>>","color":"blue"},{"translate":"actionbar.exweapons.weapon.katana.modechange_1","color":"aqua"},{"text":"<<<","color":"blue"}]
#### return
scoreboard players reset @a[scores={ExWeapons.katana.ModeChange1=..0}] ExWeapons.katana.ModeChange1
# 孔雀扇-kuzyakusen
## 旋風-senpu
scoreboard players remove @e[tag=exweapons.kuzyakusen.senpu,type=armor_stand] ExWeapons.kuzyakusen.SenpuTick 1
scoreboard players remove @e[tag=exweapons.kuzyakusen.senpuCT,type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.kuzyakusen.SenpuCT 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exweapons:{id:002d}}}}] at @s run effect give @s speed 1 1 true

execute as @e[tag=exweapons.kuzyakusen.senpu,type=armor_stand] at @s run function exweapons:core/weapons/kuzyakusen/senpu/2.damage
execute as @e[tag=exweapons.kuzyakusen.senpu,type=armor_stand] at @s run function exweapons:core/weapons/kuzyakusen/senpu/3.tp

execute as @e[scores={ExWeapons.kuzyakusen.SenpuTick=..0},type=armor_stand] run kill @s
tag @e[scores={ExWeapons.kuzyakusen.SenpuCT=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] remove exweapons.kuzyakusen.senpuCT
scoreboard players reset @e[scores={ExWeapons.kuzyakusen.SenpuCT=..0},type=!#exweapons:non_living,tag=ExWeapons.AllSelector] ExWeapons.kuzyakusen.SenpuCT
# 付与の剣-aspect_sword
